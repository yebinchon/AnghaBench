; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_ubifs_change_one_lp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_ubifs_change_one_lp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_lprops = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"cannot change properties of LEB %d, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_change_one_lp(%struct.ubifs_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ubifs_lprops*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %19 = call i32 @ubifs_get_lprops(%struct.ubifs_info* %18)
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info* %20, i32 %21)
  store %struct.ubifs_lprops* %22, %struct.ubifs_lprops** %17, align 8
  %23 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %17, align 8
  %24 = call i64 @IS_ERR(%struct.ubifs_lprops* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %17, align 8
  %28 = call i32 @PTR_ERR(%struct.ubifs_lprops* %27)
  store i32 %28, i32* %15, align 4
  br label %52

29:                                               ; preds = %7
  %30 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %17, align 8
  %31 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %12, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %13, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  store i32 %37, i32* %16, align 4
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %39 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %17, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info* %38, %struct.ubifs_lprops* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  store %struct.ubifs_lprops* %44, %struct.ubifs_lprops** %17, align 8
  %45 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %17, align 8
  %46 = call i64 @IS_ERR(%struct.ubifs_lprops* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %17, align 8
  %50 = call i32 @PTR_ERR(%struct.ubifs_lprops* %49)
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %48, %29
  br label %52

52:                                               ; preds = %51, %26
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %54 = call i32 @ubifs_release_lprops(%struct.ubifs_info* %53)
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @ubifs_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %15, align 4
  ret i32 %62
}

declare dso_local i32 @ubifs_get_lprops(%struct.ubifs_info*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_lprops*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info*, %struct.ubifs_lprops*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_release_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
