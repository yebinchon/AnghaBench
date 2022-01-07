; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_ubifs_update_one_lp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lprops.c_ubifs_update_one_lp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_lprops = type { i32, i64 }

@.str = private unnamed_addr constant [45 x i8] c"cannot update properties of LEB %d, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_update_one_lp(%struct.ubifs_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ubifs_lprops*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %17 = call i32 @ubifs_get_lprops(%struct.ubifs_info* %16)
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info* %18, i32 %19)
  store %struct.ubifs_lprops* %20, %struct.ubifs_lprops** %15, align 8
  %21 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %15, align 8
  %22 = call i64 @IS_ERR(%struct.ubifs_lprops* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %15, align 8
  %26 = call i32 @PTR_ERR(%struct.ubifs_lprops* %25)
  store i32 %26, i32* %13, align 4
  br label %54

27:                                               ; preds = %6
  %28 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %15, align 8
  %29 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %12, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  store i32 %35, i32* %14, align 4
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %37 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %15, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %15, align 8
  %40 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load i32, i32* %14, align 4
  %46 = call %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info* %36, %struct.ubifs_lprops* %37, i32 %38, i64 %44, i32 %45, i32 0)
  store %struct.ubifs_lprops* %46, %struct.ubifs_lprops** %15, align 8
  %47 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %15, align 8
  %48 = call i64 @IS_ERR(%struct.ubifs_lprops* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %27
  %51 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %15, align 8
  %52 = call i32 @PTR_ERR(%struct.ubifs_lprops* %51)
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %50, %27
  br label %54

54:                                               ; preds = %53, %24
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %56 = call i32 @ubifs_release_lprops(%struct.ubifs_info* %55)
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @ubifs_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %13, align 4
  ret i32 %64
}

declare dso_local i32 @ubifs_get_lprops(%struct.ubifs_info*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup_dirty(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_lprops*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info*, %struct.ubifs_lprops*, i32, i64, i32, i32) #1

declare dso_local i32 @ubifs_release_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
