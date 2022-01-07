; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_file.c_tomoyo_check_1path_perm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_file.c_tomoyo_check_1path_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_domain_info = type { i32 }
%struct.path = type { i32 }
%struct.tomoyo_path_info = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@TOMOYO_MAC_FOR_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_check_1path_perm(%struct.tomoyo_domain_info* %0, i32 %1, %struct.path* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tomoyo_domain_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tomoyo_path_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tomoyo_domain_info* %0, %struct.tomoyo_domain_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.path* %2, %struct.path** %7, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %5, align 8
  %15 = load i32, i32* @TOMOYO_MAC_FOR_FILE, align 4
  %16 = call i32 @tomoyo_check_flags(%struct.tomoyo_domain_info* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 3
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.path*, %struct.path** %7, align 8
  %24 = getelementptr inbounds %struct.path, %struct.path* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %3
  store i32 0, i32* %4, align 4
  br label %64

28:                                               ; preds = %22
  %29 = load %struct.path*, %struct.path** %7, align 8
  %30 = call %struct.tomoyo_path_info* @tomoyo_get_path(%struct.path* %29)
  store %struct.tomoyo_path_info* %30, %struct.tomoyo_path_info** %9, align 8
  %31 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %9, align 8
  %32 = icmp ne %struct.tomoyo_path_info* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %56

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %50 [
    i32 129, label %36
    i32 128, label %36
  ]

36:                                               ; preds = %34, %34
  %37 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %9, align 8
  %38 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %9, align 8
  %43 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @strcat(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %9, align 8
  %48 = call i32 @tomoyo_fill_path_info(%struct.tomoyo_path_info* %47)
  br label %49

49:                                               ; preds = %41, %36
  br label %50

50:                                               ; preds = %49, %34
  %51 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @tomoyo_check_single_path_permission2(%struct.tomoyo_domain_info* %51, i32 %52, %struct.tomoyo_path_info* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %50, %33
  %57 = load %struct.tomoyo_path_info*, %struct.tomoyo_path_info** %9, align 8
  %58 = call i32 @tomoyo_free(%struct.tomoyo_path_info* %57)
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %56
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %27
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @tomoyo_check_flags(%struct.tomoyo_domain_info*, i32) #1

declare dso_local %struct.tomoyo_path_info* @tomoyo_get_path(%struct.path*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @tomoyo_fill_path_info(%struct.tomoyo_path_info*) #1

declare dso_local i32 @tomoyo_check_single_path_permission2(%struct.tomoyo_domain_info*, i32, %struct.tomoyo_path_info*, i32) #1

declare dso_local i32 @tomoyo_free(%struct.tomoyo_path_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
