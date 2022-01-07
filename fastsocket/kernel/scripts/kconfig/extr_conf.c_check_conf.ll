; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_conf.c_check_conf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_conf.c_check_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.menu*, %struct.menu*, %struct.symbol* }
%struct.symbol = type { i8* }

@yes = common dso_local global i64 0, align 8
@input_mode = common dso_local global i64 0, align 8
@dont_ask = common dso_local global i64 0, align 8
@dont_ask_dont_tell = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"CONFIG_%s\0A\00", align 1
@return_value = common dso_local global i32 0, align 4
@conf_cnt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"*\0A* Restart config...\0A*\0A\00", align 1
@rootEntry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu*)* @check_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_conf(%struct.menu* %0) #0 {
  %2 = alloca %struct.menu*, align 8
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.menu*, align 8
  store %struct.menu* %0, %struct.menu** %2, align 8
  %5 = load %struct.menu*, %struct.menu** %2, align 8
  %6 = call i32 @menu_is_visible(%struct.menu* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %89

9:                                                ; preds = %1
  %10 = load %struct.menu*, %struct.menu** %2, align 8
  %11 = getelementptr inbounds %struct.menu, %struct.menu* %10, i32 0, i32 2
  %12 = load %struct.symbol*, %struct.symbol** %11, align 8
  store %struct.symbol* %12, %struct.symbol** %3, align 8
  %13 = load %struct.symbol*, %struct.symbol** %3, align 8
  %14 = icmp ne %struct.symbol* %13, null
  br i1 %14, label %15, label %76

15:                                               ; preds = %9
  %16 = load %struct.symbol*, %struct.symbol** %3, align 8
  %17 = call i32 @sym_has_value(%struct.symbol* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %76, label %19

19:                                               ; preds = %15
  %20 = load %struct.symbol*, %struct.symbol** %3, align 8
  %21 = call i64 @sym_is_changable(%struct.symbol* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = load %struct.symbol*, %struct.symbol** %3, align 8
  %25 = call i64 @sym_is_choice(%struct.symbol* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %23
  %28 = load %struct.symbol*, %struct.symbol** %3, align 8
  %29 = call i64 @sym_get_tristate_value(%struct.symbol* %28)
  %30 = load i64, i64* @yes, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %27, %19
  %33 = load i64, i64* @input_mode, align 8
  %34 = load i64, i64* @dont_ask, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* @input_mode, align 8
  %38 = load i64, i64* @dont_ask_dont_tell, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36, %32
  %41 = load i64, i64* @input_mode, align 8
  %42 = load i64, i64* @dont_ask, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load %struct.symbol*, %struct.symbol** %3, align 8
  %46 = getelementptr inbounds %struct.symbol, %struct.symbol* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.symbol*, %struct.symbol** %3, align 8
  %51 = call i32 @sym_is_choice_value(%struct.symbol* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @stderr, align 4
  %55 = load %struct.symbol*, %struct.symbol** %3, align 8
  %56 = getelementptr inbounds %struct.symbol, %struct.symbol* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* @return_value, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @return_value, align 4
  br label %61

61:                                               ; preds = %53, %49, %44, %40
  br label %74

62:                                               ; preds = %36
  %63 = load i32, i32* @conf_cnt, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @conf_cnt, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @printf(i8* %67)
  br label %69

69:                                               ; preds = %66, %62
  %70 = load %struct.menu*, %struct.menu** %2, align 8
  %71 = call i32 @menu_get_parent_menu(%struct.menu* %70)
  store i32 %71, i32* @rootEntry, align 4
  %72 = load i32, i32* @rootEntry, align 4
  %73 = call i32 @conf(i32 %72)
  br label %74

74:                                               ; preds = %69, %61
  br label %75

75:                                               ; preds = %74, %27, %23
  br label %76

76:                                               ; preds = %75, %15, %9
  %77 = load %struct.menu*, %struct.menu** %2, align 8
  %78 = getelementptr inbounds %struct.menu, %struct.menu* %77, i32 0, i32 1
  %79 = load %struct.menu*, %struct.menu** %78, align 8
  store %struct.menu* %79, %struct.menu** %4, align 8
  br label %80

80:                                               ; preds = %85, %76
  %81 = load %struct.menu*, %struct.menu** %4, align 8
  %82 = icmp ne %struct.menu* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load %struct.menu*, %struct.menu** %4, align 8
  call void @check_conf(%struct.menu* %84)
  br label %85

85:                                               ; preds = %83
  %86 = load %struct.menu*, %struct.menu** %4, align 8
  %87 = getelementptr inbounds %struct.menu, %struct.menu* %86, i32 0, i32 0
  %88 = load %struct.menu*, %struct.menu** %87, align 8
  store %struct.menu* %88, %struct.menu** %4, align 8
  br label %80

89:                                               ; preds = %8, %80
  ret void
}

declare dso_local i32 @menu_is_visible(%struct.menu*) #1

declare dso_local i32 @sym_has_value(%struct.symbol*) #1

declare dso_local i64 @sym_is_changable(%struct.symbol*) #1

declare dso_local i64 @sym_is_choice(%struct.symbol*) #1

declare dso_local i64 @sym_get_tristate_value(%struct.symbol*) #1

declare dso_local i32 @sym_is_choice_value(%struct.symbol*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @menu_get_parent_menu(%struct.menu*) #1

declare dso_local i32 @conf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
