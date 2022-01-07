; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_file.c_tomoyo_check_file_perm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_file.c_tomoyo_check_file_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_domain_info = type { i32 }
%struct.tomoyo_path_info = type { i8* }

@TOMOYO_MAC_FOR_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sysctl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_check_file_perm(%struct.tomoyo_domain_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tomoyo_domain_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tomoyo_path_info, align 8
  %9 = alloca i32, align 4
  store %struct.tomoyo_domain_info* %0, %struct.tomoyo_domain_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %5, align 8
  %11 = load i32, i32* @TOMOYO_MAC_FOR_FILE, align 4
  %12 = call i32 @tomoyo_check_flags(%struct.tomoyo_domain_info* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %24

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds %struct.tomoyo_path_info, %struct.tomoyo_path_info* %8, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = call i32 @tomoyo_fill_path_info(%struct.tomoyo_path_info* %8)
  %20 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @tomoyo_check_file_perm2(%struct.tomoyo_domain_info* %20, %struct.tomoyo_path_info* %8, i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %16, %15
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @tomoyo_check_flags(%struct.tomoyo_domain_info*, i32) #1

declare dso_local i32 @tomoyo_fill_path_info(%struct.tomoyo_path_info*) #1

declare dso_local i32 @tomoyo_check_file_perm2(%struct.tomoyo_domain_info*, %struct.tomoyo_path_info*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
