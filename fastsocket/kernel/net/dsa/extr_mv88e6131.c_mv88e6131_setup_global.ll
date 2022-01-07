; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6131.c_mv88e6131_setup_global.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6131.c_mv88e6131_setup_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@REG_GLOBAL = common dso_local global i32 0, align 4
@REG_GLOBAL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @mv88e6131_setup_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6131_setup_global(%struct.dsa_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  %7 = load i32, i32* @REG_GLOBAL, align 4
  %8 = call i32 @REG_WRITE(i32 %7, i32 4, i32 17408)
  %9 = load i32, i32* @REG_GLOBAL, align 4
  %10 = call i32 @REG_WRITE(i32 %9, i32 10, i32 328)
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %12 = call i32 @mv88e6xxx_config_prio(%struct.dsa_switch* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %108

17:                                               ; preds = %1
  %18 = load i32, i32* @REG_GLOBAL, align 4
  %19 = call i32 @REG_WRITE(i32 %18, i32 25, i32 33024)
  %20 = load i32, i32* @REG_GLOBAL, align 4
  %21 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %22 = call i32 @dsa_upstream_port(%struct.dsa_switch* %21)
  %23 = mul nsw i32 %22, 4352
  %24 = or i32 %23, 240
  %25 = call i32 @REG_WRITE(i32 %20, i32 26, i32 %24)
  %26 = load i32, i32* @REG_GLOBAL, align 4
  %27 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %28 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, 31
  %31 = or i32 57344, %30
  %32 = call i32 @REG_WRITE(i32 %26, i32 28, i32 %31)
  %33 = load i32, i32* @REG_GLOBAL2, align 4
  %34 = call i32 @REG_WRITE(i32 %33, i32 3, i32 65535)
  %35 = load i32, i32* @REG_GLOBAL2, align 4
  %36 = call i32 @REG_WRITE(i32 %35, i32 5, i32 255)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %75, %17
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 32
  br i1 %39, label %40, label %78

40:                                               ; preds = %37
  store i32 31, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %43 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %49 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %47, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %46
  %57 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %58 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 31
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %56, %46, %40
  %68 = load i32, i32* @REG_GLOBAL2, align 4
  %69 = load i32, i32* %5, align 4
  %70 = shl i32 %69, 8
  %71 = or i32 32768, %70
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @REG_WRITE(i32 %68, i32 6, i32 %73)
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %37

78:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %89, %78
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 8
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* @REG_GLOBAL2, align 4
  %84 = load i32, i32* %5, align 4
  %85 = shl i32 %84, 12
  %86 = or i32 32768, %85
  %87 = or i32 %86, 2047
  %88 = call i32 @REG_WRITE(i32 %83, i32 7, i32 %87)
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %79

92:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %102, %92
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %94, 16
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i32, i32* @REG_GLOBAL2, align 4
  %98 = load i32, i32* %5, align 4
  %99 = shl i32 %98, 11
  %100 = or i32 32768, %99
  %101 = call i32 @REG_WRITE(i32 %97, i32 8, i32 %100)
  br label %102

102:                                              ; preds = %96
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %93

105:                                              ; preds = %93
  %106 = load i32, i32* @REG_GLOBAL2, align 4
  %107 = call i32 @REG_WRITE(i32 %106, i32 15, i32 255)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %105, %15
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @REG_WRITE(i32, i32, i32) #1

declare dso_local i32 @mv88e6xxx_config_prio(%struct.dsa_switch*) #1

declare dso_local i32 @dsa_upstream_port(%struct.dsa_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
