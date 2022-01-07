; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_savagefb_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_savagefb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.fb_var_screeninfo, %struct.savagefb_par* }
%struct.fb_var_screeninfo = type { i32 }
%struct.savagefb_par = type { i64, i64*, i64, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"savagefb_set_par\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @savagefb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savagefb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.savagefb_par*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 2
  %9 = load %struct.savagefb_par*, %struct.savagefb_par** %8, align 8
  store %struct.savagefb_par* %9, %struct.savagefb_par** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  store %struct.fb_var_screeninfo* %11, %struct.fb_var_screeninfo** %5, align 8
  %12 = call i32 @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %14 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %15 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %16 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %15, i32 0, i32 4
  %17 = call i32 @savagefb_decode_var(%struct.fb_var_screeninfo* %13, %struct.savagefb_par* %14, i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %110

22:                                               ; preds = %1
  %23 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %24 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %88

27:                                               ; preds = %22
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 24
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %34 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %39 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %87

40:                                               ; preds = %27
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 24
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %47 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %52 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %86

53:                                               ; preds = %40
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 8
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 24
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %65 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %70 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %85

71:                                               ; preds = %58, %53
  %72 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sle i32 %74, 8
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %78 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %83 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %76, %71
  br label %85

85:                                               ; preds = %84, %63
  br label %86

86:                                               ; preds = %85, %45
  br label %87

87:                                               ; preds = %86, %32
  br label %88

88:                                               ; preds = %87, %22
  %89 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %90 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %93 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %95 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %94, i32 0, i32 3
  store i32 10000, i32* %95, align 8
  %96 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %97 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %98 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %97, i32 0, i32 4
  %99 = call i32 @savagefb_set_par_int(%struct.savagefb_par* %96, i32* %98)
  %100 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %101 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %100, i32 0, i32 0
  %102 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %103 = call i32 @fb_set_cmap(i32* %101, %struct.fb_info* %102)
  %104 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %105 = call i32 @savagefb_set_fix(%struct.fb_info* %104)
  %106 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %107 = call i32 @savagefb_set_clip(%struct.fb_info* %106)
  %108 = load %struct.savagefb_par*, %struct.savagefb_par** %4, align 8
  %109 = call i32 @SavagePrintRegs(%struct.savagefb_par* %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %88, %20
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @savagefb_decode_var(%struct.fb_var_screeninfo*, %struct.savagefb_par*, i32*) #1

declare dso_local i32 @savagefb_set_par_int(%struct.savagefb_par*, i32*) #1

declare dso_local i32 @fb_set_cmap(i32*, %struct.fb_info*) #1

declare dso_local i32 @savagefb_set_fix(%struct.fb_info*) #1

declare dso_local i32 @savagefb_set_clip(%struct.fb_info*) #1

declare dso_local i32 @SavagePrintRegs(%struct.savagefb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
