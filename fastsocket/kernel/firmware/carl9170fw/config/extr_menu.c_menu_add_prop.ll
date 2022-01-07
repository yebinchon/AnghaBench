; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_menu.c_menu_add_prop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_menu.c_menu_add_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.property*, i32, %struct.menu*, i32 }
%struct.property = type { i8*, %struct.TYPE_2__, %struct.expr*, %struct.menu* }
%struct.TYPE_2__ = type { i32 }
%struct.expr = type { i32 }

@current_entry = common dso_local global %struct.menu* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"leading whitespace ignored\00", align 1
@rootmenu = common dso_local global %struct.menu zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"prompt redefined\00", align 1
@P_PROMPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.property* @menu_add_prop(i32 %0, i8* %1, %struct.expr* %2, %struct.expr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.expr*, align 8
  %8 = alloca %struct.expr*, align 8
  %9 = alloca %struct.property*, align 8
  %10 = alloca %struct.menu*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.expr* %2, %struct.expr** %7, align 8
  store %struct.expr* %3, %struct.expr** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.menu*, %struct.menu** @current_entry, align 8
  %13 = getelementptr inbounds %struct.menu, %struct.menu* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.property* @prop_alloc(i32 %11, i32 %14)
  store %struct.property* %15, %struct.property** %9, align 8
  %16 = load %struct.menu*, %struct.menu** @current_entry, align 8
  %17 = load %struct.property*, %struct.property** %9, align 8
  %18 = getelementptr inbounds %struct.property, %struct.property* %17, i32 0, i32 3
  store %struct.menu* %16, %struct.menu** %18, align 8
  %19 = load %struct.expr*, %struct.expr** %7, align 8
  %20 = load %struct.property*, %struct.property** %9, align 8
  %21 = getelementptr inbounds %struct.property, %struct.property* %20, i32 0, i32 2
  store %struct.expr* %19, %struct.expr** %21, align 8
  %22 = load %struct.expr*, %struct.expr** %8, align 8
  %23 = call i32 @menu_check_dep(%struct.expr* %22)
  %24 = load %struct.property*, %struct.property** %9, align 8
  %25 = getelementptr inbounds %struct.property, %struct.property* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %91

29:                                               ; preds = %4
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @isspace(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.property*, %struct.property** %9, align 8
  %36 = call i32 @prop_warn(%struct.property* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %42, %34
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @isspace(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  br label %37

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %29
  %47 = load %struct.menu*, %struct.menu** @current_entry, align 8
  %48 = getelementptr inbounds %struct.menu, %struct.menu* %47, i32 0, i32 0
  %49 = load %struct.property*, %struct.property** %48, align 8
  %50 = icmp ne %struct.property* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.menu*, %struct.menu** @current_entry, align 8
  %53 = icmp ne %struct.menu* %52, @rootmenu
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.property*, %struct.property** %9, align 8
  %56 = call i32 @prop_warn(%struct.property* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %51, %46
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @P_PROMPT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %57
  %62 = load %struct.menu*, %struct.menu** @current_entry, align 8
  store %struct.menu* %62, %struct.menu** %10, align 8
  br label %63

63:                                               ; preds = %74, %73, %61
  %64 = load %struct.menu*, %struct.menu** %10, align 8
  %65 = getelementptr inbounds %struct.menu, %struct.menu* %64, i32 0, i32 2
  %66 = load %struct.menu*, %struct.menu** %65, align 8
  store %struct.menu* %66, %struct.menu** %10, align 8
  %67 = icmp ne %struct.menu* %66, null
  br i1 %67, label %68, label %86

68:                                               ; preds = %63
  %69 = load %struct.menu*, %struct.menu** %10, align 8
  %70 = getelementptr inbounds %struct.menu, %struct.menu* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %63

74:                                               ; preds = %68
  %75 = load %struct.property*, %struct.property** %9, align 8
  %76 = getelementptr inbounds %struct.property, %struct.property* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.menu*, %struct.menu** %10, align 8
  %80 = getelementptr inbounds %struct.menu, %struct.menu* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @expr_alloc_and(i32 %78, i32 %81)
  %83 = load %struct.property*, %struct.property** %9, align 8
  %84 = getelementptr inbounds %struct.property, %struct.property* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  br label %63

86:                                               ; preds = %63
  br label %87

87:                                               ; preds = %86, %57
  %88 = load %struct.property*, %struct.property** %9, align 8
  %89 = load %struct.menu*, %struct.menu** @current_entry, align 8
  %90 = getelementptr inbounds %struct.menu, %struct.menu* %89, i32 0, i32 0
  store %struct.property* %88, %struct.property** %90, align 8
  br label %91

91:                                               ; preds = %87, %4
  %92 = load i8*, i8** %6, align 8
  %93 = load %struct.property*, %struct.property** %9, align 8
  %94 = getelementptr inbounds %struct.property, %struct.property* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load %struct.property*, %struct.property** %9, align 8
  ret %struct.property* %95
}

declare dso_local %struct.property* @prop_alloc(i32, i32) #1

declare dso_local i32 @menu_check_dep(%struct.expr*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @prop_warn(%struct.property*, i8*) #1

declare dso_local i32 @expr_alloc_and(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
