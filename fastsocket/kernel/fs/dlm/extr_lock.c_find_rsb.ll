; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_find_rsb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_find_rsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dlm_rsb = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DLM_RESNAME_MAXLEN = common dso_local global i32 0, align 4
@R_CREATE = common dso_local global i32 0, align 4
@EBADR = common dso_local global i32 0, align 4
@ENOTBLK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, i8*, i32, i32, %struct.dlm_rsb**)* @find_rsb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_rsb(%struct.dlm_ls* %0, i8* %1, i32 %2, i32 %3, %struct.dlm_rsb** %4) #0 {
  %6 = alloca %struct.dlm_ls*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dlm_rsb**, align 8
  %11 = alloca %struct.dlm_rsb*, align 8
  %12 = alloca %struct.dlm_rsb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dlm_rsb** %4, %struct.dlm_rsb*** %10, align 8
  store %struct.dlm_rsb* null, %struct.dlm_rsb** %11, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @DLM_RESNAME_MAXLEN, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %150

23:                                               ; preds = %5
  %24 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %25 = call i64 @dlm_no_directory(%struct.dlm_ls* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @R_CREATE, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %27, %23
  store i32 0, i32* %15, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @jhash(i8* %32, i32 %33, i32 0)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %37 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %35, %39
  store i32 %40, i32* %14, align 4
  %41 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @search_rsb(%struct.dlm_ls* %41, i8* %42, i32 %43, i32 %44, i32 %45, %struct.dlm_rsb** %11)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %31
  br label %150

50:                                               ; preds = %31
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @EBADR, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @R_CREATE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %150

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @ENOTBLK, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %150

67:                                               ; preds = %61
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %15, align 4
  %70 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call %struct.dlm_rsb* @create_rsb(%struct.dlm_ls* %70, i8* %71, i32 %72)
  store %struct.dlm_rsb* %73, %struct.dlm_rsb** %11, align 8
  %74 = load %struct.dlm_rsb*, %struct.dlm_rsb** %11, align 8
  %75 = icmp ne %struct.dlm_rsb* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  br label %150

77:                                               ; preds = %67
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.dlm_rsb*, %struct.dlm_rsb** %11, align 8
  %80 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.dlm_rsb*, %struct.dlm_rsb** %11, align 8
  %83 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.dlm_rsb*, %struct.dlm_rsb** %11, align 8
  %85 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %84, i32 0, i32 2
  store i32 -1, i32* %85, align 4
  %86 = load %struct.dlm_rsb*, %struct.dlm_rsb** %11, align 8
  %87 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %86, i32 0, i32 4
  %88 = call i32 @kref_init(i32* %87)
  %89 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %90 = call i64 @dlm_no_directory(%struct.dlm_ls* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %77
  %93 = load %struct.dlm_rsb*, %struct.dlm_rsb** %11, align 8
  %94 = call i32 @dlm_dir_nodeid(%struct.dlm_rsb* %93)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = call i32 (...) @dlm_our_nodeid()
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 0, i32* %16, align 4
  br label %99

99:                                               ; preds = %98, %92
  %100 = load i32, i32* %16, align 4
  %101 = load %struct.dlm_rsb*, %struct.dlm_rsb** %11, align 8
  %102 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %77
  %104 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %105 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = call i32 @spin_lock(i32* %110)
  %112 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @_search_rsb(%struct.dlm_ls* %112, i8* %113, i32 %114, i32 %115, i32 0, %struct.dlm_rsb** %12)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %131, label %119

119:                                              ; preds = %103
  %120 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %121 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = call i32 @spin_unlock(i32* %126)
  %128 = load %struct.dlm_rsb*, %struct.dlm_rsb** %11, align 8
  %129 = call i32 @dlm_free_rsb(%struct.dlm_rsb* %128)
  %130 = load %struct.dlm_rsb*, %struct.dlm_rsb** %12, align 8
  store %struct.dlm_rsb* %130, %struct.dlm_rsb** %11, align 8
  br label %150

131:                                              ; preds = %103
  %132 = load %struct.dlm_rsb*, %struct.dlm_rsb** %11, align 8
  %133 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %132, i32 0, i32 3
  %134 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %135 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = call i32 @list_add(i32* %133, i32* %140)
  %142 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %143 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %142, i32 0, i32 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = call i32 @spin_unlock(i32* %148)
  store i32 0, i32* %15, align 4
  br label %150

150:                                              ; preds = %131, %119, %76, %66, %60, %49, %22
  %151 = load %struct.dlm_rsb*, %struct.dlm_rsb** %11, align 8
  %152 = load %struct.dlm_rsb**, %struct.dlm_rsb*** %10, align 8
  store %struct.dlm_rsb* %151, %struct.dlm_rsb** %152, align 8
  %153 = load i32, i32* %15, align 4
  ret i32 %153
}

declare dso_local i64 @dlm_no_directory(%struct.dlm_ls*) #1

declare dso_local i32 @jhash(i8*, i32, i32) #1

declare dso_local i32 @search_rsb(%struct.dlm_ls*, i8*, i32, i32, i32, %struct.dlm_rsb**) #1

declare dso_local %struct.dlm_rsb* @create_rsb(%struct.dlm_ls*, i8*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @dlm_dir_nodeid(%struct.dlm_rsb*) #1

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_search_rsb(%struct.dlm_ls*, i8*, i32, i32, i32, %struct.dlm_rsb**) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_free_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
