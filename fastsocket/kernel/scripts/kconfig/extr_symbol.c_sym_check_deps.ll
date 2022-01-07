; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_symbol.c_sym_check_deps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_symbol.c_sym_check_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.property = type { i32 }

@SYMBOL_CHECK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s:%d:error: found recursive dependency: %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"<choice>\00", align 1
@SYMBOL_CHECKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c" -> %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@zconfnerrs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @sym_check_deps(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.property*, align 8
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  %6 = load %struct.symbol*, %struct.symbol** %3, align 8
  %7 = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SYMBOL_CHECK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  %13 = load i32, i32* @stderr, align 4
  %14 = load %struct.symbol*, %struct.symbol** %3, align 8
  %15 = getelementptr inbounds %struct.symbol, %struct.symbol* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.symbol*, %struct.symbol** %3, align 8
  %22 = getelementptr inbounds %struct.symbol, %struct.symbol* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.symbol*, %struct.symbol** %3, align 8
  %27 = getelementptr inbounds %struct.symbol, %struct.symbol* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %12
  %31 = load %struct.symbol*, %struct.symbol** %3, align 8
  %32 = getelementptr inbounds %struct.symbol, %struct.symbol* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %12
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i8* [ %33, %30 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %34 ]
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %25, i8* %36)
  %38 = load %struct.symbol*, %struct.symbol** %3, align 8
  store %struct.symbol* %38, %struct.symbol** %2, align 8
  br label %109

39:                                               ; preds = %1
  %40 = load %struct.symbol*, %struct.symbol** %3, align 8
  %41 = getelementptr inbounds %struct.symbol, %struct.symbol* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SYMBOL_CHECKED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store %struct.symbol* null, %struct.symbol** %2, align 8
  br label %109

47:                                               ; preds = %39
  %48 = load %struct.symbol*, %struct.symbol** %3, align 8
  %49 = call i64 @sym_is_choice_value(%struct.symbol* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.symbol*, %struct.symbol** %3, align 8
  %53 = call %struct.property* @sym_get_choice_prop(%struct.symbol* %52)
  store %struct.property* %53, %struct.property** %5, align 8
  %54 = load %struct.property*, %struct.property** %5, align 8
  %55 = call %struct.symbol* @prop_get_symbol(%struct.property* %54)
  %56 = call %struct.symbol* @sym_check_deps(%struct.symbol* %55)
  store %struct.symbol* %56, %struct.symbol** %4, align 8
  br label %81

57:                                               ; preds = %47
  %58 = load %struct.symbol*, %struct.symbol** %3, align 8
  %59 = call i64 @sym_is_choice(%struct.symbol* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.symbol*, %struct.symbol** %3, align 8
  %63 = call %struct.symbol* @sym_check_choice_deps(%struct.symbol* %62)
  store %struct.symbol* %63, %struct.symbol** %4, align 8
  br label %80

64:                                               ; preds = %57
  %65 = load i32, i32* @SYMBOL_CHECK, align 4
  %66 = load i32, i32* @SYMBOL_CHECKED, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.symbol*, %struct.symbol** %3, align 8
  %69 = getelementptr inbounds %struct.symbol, %struct.symbol* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.symbol*, %struct.symbol** %3, align 8
  %73 = call %struct.symbol* @sym_check_sym_deps(%struct.symbol* %72)
  store %struct.symbol* %73, %struct.symbol** %4, align 8
  %74 = load i32, i32* @SYMBOL_CHECK, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.symbol*, %struct.symbol** %3, align 8
  %77 = getelementptr inbounds %struct.symbol, %struct.symbol* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %64, %61
  br label %81

81:                                               ; preds = %80, %51
  %82 = load %struct.symbol*, %struct.symbol** %4, align 8
  %83 = icmp ne %struct.symbol* %82, null
  br i1 %83, label %84, label %107

84:                                               ; preds = %81
  %85 = load i32, i32* @stderr, align 4
  %86 = load %struct.symbol*, %struct.symbol** %3, align 8
  %87 = getelementptr inbounds %struct.symbol, %struct.symbol* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.symbol*, %struct.symbol** %3, align 8
  %92 = getelementptr inbounds %struct.symbol, %struct.symbol* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  br label %95

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %90
  %96 = phi i8* [ %93, %90 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %94 ]
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %96)
  %98 = load %struct.symbol*, %struct.symbol** %4, align 8
  %99 = load %struct.symbol*, %struct.symbol** %3, align 8
  %100 = icmp eq %struct.symbol* %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load i32, i32* @stderr, align 4
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* @zconfnerrs, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* @zconfnerrs, align 4
  store %struct.symbol* null, %struct.symbol** %4, align 8
  br label %106

106:                                              ; preds = %101, %95
  br label %107

107:                                              ; preds = %106, %81
  %108 = load %struct.symbol*, %struct.symbol** %4, align 8
  store %struct.symbol* %108, %struct.symbol** %2, align 8
  br label %109

109:                                              ; preds = %107, %46, %35
  %110 = load %struct.symbol*, %struct.symbol** %2, align 8
  ret %struct.symbol* %110
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @sym_is_choice_value(%struct.symbol*) #1

declare dso_local %struct.property* @sym_get_choice_prop(%struct.symbol*) #1

declare dso_local %struct.symbol* @prop_get_symbol(%struct.property*) #1

declare dso_local i64 @sym_is_choice(%struct.symbol*) #1

declare dso_local %struct.symbol* @sym_check_choice_deps(%struct.symbol*) #1

declare dso_local %struct.symbol* @sym_check_sym_deps(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
