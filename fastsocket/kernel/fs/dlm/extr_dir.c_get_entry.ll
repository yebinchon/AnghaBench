; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_dir.c_get_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_dir.c_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dlm_direntry = type { i32, i32, i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@DLM_RESNAME_MAXLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, i32, i8*, i32, i32*)* @get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_entry(%struct.dlm_ls* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_ls*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dlm_direntry*, align 8
  %13 = alloca %struct.dlm_direntry*, align 8
  %14 = alloca i64, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @dir_hash(%struct.dlm_ls* %15, i8* %16, i32 %17)
  store i64 %18, i64* %14, align 8
  %19 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %20 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i64, i64* %14, align 8
  %30 = call %struct.dlm_direntry* @search_bucket(%struct.dlm_ls* %26, i8* %27, i32 %28, i64 %29)
  store %struct.dlm_direntry* %30, %struct.dlm_direntry** %12, align 8
  %31 = load %struct.dlm_direntry*, %struct.dlm_direntry** %12, align 8
  %32 = icmp ne %struct.dlm_direntry* %31, null
  br i1 %32, label %33, label %53

33:                                               ; preds = %5
  %34 = load %struct.dlm_direntry*, %struct.dlm_direntry** %12, align 8
  %35 = getelementptr inbounds %struct.dlm_direntry, %struct.dlm_direntry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %11, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %39 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %33
  %50 = load i32, i32* @EEXIST, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %132

52:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %132

53:                                               ; preds = %5
  %54 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %55 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @DLM_RESNAME_MAXLEN, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %132

67:                                               ; preds = %53
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 16, %69
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* @GFP_NOFS, align 4
  %73 = call %struct.dlm_direntry* @kzalloc(i32 %71, i32 %72)
  store %struct.dlm_direntry* %73, %struct.dlm_direntry** %12, align 8
  %74 = load %struct.dlm_direntry*, %struct.dlm_direntry** %12, align 8
  %75 = icmp ne %struct.dlm_direntry* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %132

79:                                               ; preds = %67
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.dlm_direntry*, %struct.dlm_direntry** %12, align 8
  %82 = getelementptr inbounds %struct.dlm_direntry, %struct.dlm_direntry* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.dlm_direntry*, %struct.dlm_direntry** %12, align 8
  %85 = getelementptr inbounds %struct.dlm_direntry, %struct.dlm_direntry* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.dlm_direntry*, %struct.dlm_direntry** %12, align 8
  %87 = getelementptr inbounds %struct.dlm_direntry, %struct.dlm_direntry* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @memcpy(i32 %88, i8* %89, i32 %90)
  %92 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %93 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i64, i64* %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = call i32 @spin_lock(i32* %97)
  %99 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i64, i64* %14, align 8
  %103 = call %struct.dlm_direntry* @search_bucket(%struct.dlm_ls* %99, i8* %100, i32 %101, i64 %102)
  store %struct.dlm_direntry* %103, %struct.dlm_direntry** %13, align 8
  %104 = load %struct.dlm_direntry*, %struct.dlm_direntry** %13, align 8
  %105 = icmp ne %struct.dlm_direntry* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %79
  %107 = load %struct.dlm_direntry*, %struct.dlm_direntry** %12, align 8
  %108 = call i32 @kfree(%struct.dlm_direntry* %107)
  %109 = load %struct.dlm_direntry*, %struct.dlm_direntry** %13, align 8
  store %struct.dlm_direntry* %109, %struct.dlm_direntry** %12, align 8
  br label %120

110:                                              ; preds = %79
  %111 = load %struct.dlm_direntry*, %struct.dlm_direntry** %12, align 8
  %112 = getelementptr inbounds %struct.dlm_direntry, %struct.dlm_direntry* %111, i32 0, i32 2
  %113 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %114 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i64, i64* %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = call i32 @list_add_tail(i32* %112, i32* %118)
  br label %120

120:                                              ; preds = %110, %106
  %121 = load %struct.dlm_direntry*, %struct.dlm_direntry** %12, align 8
  %122 = getelementptr inbounds %struct.dlm_direntry, %struct.dlm_direntry* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %11, align 8
  store i32 %123, i32* %124, align 4
  %125 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %126 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = call i32 @spin_unlock(i32* %130)
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %120, %76, %64, %52, %49
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i64 @dir_hash(%struct.dlm_ls*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_direntry* @search_bucket(%struct.dlm_ls*, i8*, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.dlm_direntry* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.dlm_direntry*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
