; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_menu.c_sym_check_prop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_menu.c_sym_check_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i32, %struct.property* }
%struct.property = type { i32, %struct.TYPE_6__*, %struct.property* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@S_STRING = common dso_local global i32 0, align 4
@S_INT = common dso_local global i32 0, align 4
@S_HEX = common dso_local global i32 0, align 4
@E_SYMBOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"default for config symbol '%' must be a single symbol\00", align 1
@S_BOOLEAN = common dso_local global i32 0, align 4
@S_TRISTATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"config symbol '%s' uses select, but is not boolean or tristate\00", align 1
@S_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"'%s' has wrong type. 'select' only accept arguments of boolean and tristate type\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"range is only allowed for int or hex symbols\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"range is invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symbol*)* @sym_check_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_check_prop(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.property*, align 8
  %4 = alloca %struct.symbol*, align 8
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  %5 = load %struct.symbol*, %struct.symbol** %2, align 8
  %6 = getelementptr inbounds %struct.symbol, %struct.symbol* %5, i32 0, i32 2
  %7 = load %struct.property*, %struct.property** %6, align 8
  store %struct.property* %7, %struct.property** %3, align 8
  br label %8

8:                                                ; preds = %135, %1
  %9 = load %struct.property*, %struct.property** %3, align 8
  %10 = icmp ne %struct.property* %9, null
  br i1 %10, label %11, label %139

11:                                               ; preds = %8
  %12 = load %struct.property*, %struct.property** %3, align 8
  %13 = getelementptr inbounds %struct.property, %struct.property* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %133 [
    i32 130, label %15
    i32 128, label %48
    i32 129, label %94
  ]

15:                                               ; preds = %11
  %16 = load %struct.symbol*, %struct.symbol** %2, align 8
  %17 = getelementptr inbounds %struct.symbol, %struct.symbol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @S_STRING, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load %struct.symbol*, %struct.symbol** %2, align 8
  %23 = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @S_INT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.symbol*, %struct.symbol** %2, align 8
  %29 = getelementptr inbounds %struct.symbol, %struct.symbol* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @S_HEX, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %27, %21, %15
  %34 = load %struct.property*, %struct.property** %3, align 8
  %35 = getelementptr inbounds %struct.property, %struct.property* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @E_SYMBOL, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.property*, %struct.property** %3, align 8
  %43 = load %struct.symbol*, %struct.symbol** %2, align 8
  %44 = getelementptr inbounds %struct.symbol, %struct.symbol* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %42, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %33, %27
  br label %134

48:                                               ; preds = %11
  %49 = load %struct.property*, %struct.property** %3, align 8
  %50 = call %struct.symbol* @prop_get_symbol(%struct.property* %49)
  store %struct.symbol* %50, %struct.symbol** %4, align 8
  %51 = load %struct.symbol*, %struct.symbol** %2, align 8
  %52 = getelementptr inbounds %struct.symbol, %struct.symbol* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @S_BOOLEAN, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load %struct.symbol*, %struct.symbol** %2, align 8
  %58 = getelementptr inbounds %struct.symbol, %struct.symbol* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @S_TRISTATE, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.property*, %struct.property** %3, align 8
  %64 = load %struct.symbol*, %struct.symbol** %2, align 8
  %65 = getelementptr inbounds %struct.symbol, %struct.symbol* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %63, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %93

68:                                               ; preds = %56, %48
  %69 = load %struct.symbol*, %struct.symbol** %4, align 8
  %70 = getelementptr inbounds %struct.symbol, %struct.symbol* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @S_UNKNOWN, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %68
  %75 = load %struct.symbol*, %struct.symbol** %4, align 8
  %76 = getelementptr inbounds %struct.symbol, %struct.symbol* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @S_BOOLEAN, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load %struct.symbol*, %struct.symbol** %4, align 8
  %82 = getelementptr inbounds %struct.symbol, %struct.symbol* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @S_TRISTATE, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.property*, %struct.property** %3, align 8
  %88 = load %struct.symbol*, %struct.symbol** %4, align 8
  %89 = getelementptr inbounds %struct.symbol, %struct.symbol* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %87, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %86, %80, %74, %68
  br label %93

93:                                               ; preds = %92, %62
  br label %134

94:                                               ; preds = %11
  %95 = load %struct.symbol*, %struct.symbol** %2, align 8
  %96 = getelementptr inbounds %struct.symbol, %struct.symbol* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @S_INT, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %94
  %101 = load %struct.symbol*, %struct.symbol** %2, align 8
  %102 = getelementptr inbounds %struct.symbol, %struct.symbol* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @S_HEX, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load %struct.property*, %struct.property** %3, align 8
  %108 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %107, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %100, %94
  %110 = load %struct.symbol*, %struct.symbol** %2, align 8
  %111 = load %struct.property*, %struct.property** %3, align 8
  %112 = getelementptr inbounds %struct.property, %struct.property* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @menu_range_valid_sym(%struct.symbol* %110, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %109
  %120 = load %struct.symbol*, %struct.symbol** %2, align 8
  %121 = load %struct.property*, %struct.property** %3, align 8
  %122 = getelementptr inbounds %struct.property, %struct.property* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @menu_range_valid_sym(%struct.symbol* %120, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %119, %109
  %130 = load %struct.property*, %struct.property** %3, align 8
  %131 = call i32 (%struct.property*, i8*, ...) @prop_warn(%struct.property* %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %119
  br label %134

133:                                              ; preds = %11
  br label %134

134:                                              ; preds = %133, %132, %93, %47
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.property*, %struct.property** %3, align 8
  %137 = getelementptr inbounds %struct.property, %struct.property* %136, i32 0, i32 2
  %138 = load %struct.property*, %struct.property** %137, align 8
  store %struct.property* %138, %struct.property** %3, align 8
  br label %8

139:                                              ; preds = %8
  ret void
}

declare dso_local i32 @prop_warn(%struct.property*, i8*, ...) #1

declare dso_local %struct.symbol* @prop_get_symbol(%struct.property*) #1

declare dso_local i32 @menu_range_valid_sym(%struct.symbol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
