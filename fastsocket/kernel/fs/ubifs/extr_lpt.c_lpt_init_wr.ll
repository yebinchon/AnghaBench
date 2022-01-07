; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_lpt_init_wr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_lpt_init_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i64, %struct.TYPE_2__*, i32, i64, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @lpt_init_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpt_init_wr(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = trunc i64 %10 to i32
  %12 = call i8* @vmalloc(i32 %11)
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 8
  store i8* %12, i8** %14, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %15, i32 0, i32 8
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %106

22:                                               ; preds = %1
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @vmalloc(i32 %25)
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 7
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %106

36:                                               ; preds = %22
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %38 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %36
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @GFP_NOFS, align 4
  %49 = call i32 @kmalloc(i32 %47, i32 %48)
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %41
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %106

59:                                               ; preds = %41
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %61 = call i32 @read_lsave(%struct.ubifs_info* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %106

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %36
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %102, %67
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %71 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %105

74:                                               ; preds = %68
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %84 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %74
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %92 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %88, i64 %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %106

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %74
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %68

105:                                              ; preds = %68
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %98, %64, %56, %33, %19
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @read_lsave(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
