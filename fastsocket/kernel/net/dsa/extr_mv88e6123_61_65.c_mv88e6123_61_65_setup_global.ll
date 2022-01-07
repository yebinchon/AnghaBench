; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6123_61_65.c_mv88e6123_61_65_setup_global.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6123_61_65.c_mv88e6123_61_65_setup_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@REG_GLOBAL = common dso_local global i32 0, align 4
@REG_GLOBAL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @mv88e6123_61_65_setup_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6123_61_65_setup_global(%struct.dsa_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  %7 = load i32, i32* @REG_GLOBAL, align 4
  %8 = call i32 @REG_WRITE(i32 %7, i32 4, i32 0)
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
  br label %132

17:                                               ; preds = %1
  %18 = load i32, i32* @REG_GLOBAL, align 4
  %19 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %20 = call i32 @dsa_upstream_port(%struct.dsa_switch* %19)
  %21 = mul nsw i32 %20, 4368
  %22 = call i32 @REG_WRITE(i32 %18, i32 26, i32 %21)
  %23 = load i32, i32* @REG_GLOBAL, align 4
  %24 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %25 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 31
  %28 = call i32 @REG_WRITE(i32 %23, i32 28, i32 %27)
  %29 = load i32, i32* @REG_GLOBAL2, align 4
  %30 = call i32 @REG_WRITE(i32 %29, i32 2, i32 65535)
  %31 = load i32, i32* @REG_GLOBAL2, align 4
  %32 = call i32 @REG_WRITE(i32 %31, i32 3, i32 65535)
  %33 = load i32, i32* @REG_GLOBAL2, align 4
  %34 = call i32 @REG_WRITE(i32 %33, i32 5, i32 255)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %73, %17
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 32
  br i1 %37, label %38, label %76

38:                                               ; preds = %35
  store i32 31, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %41 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %47 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %45, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %44
  %55 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %56 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 31
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %54, %44, %38
  %66 = load i32, i32* @REG_GLOBAL2, align 4
  %67 = load i32, i32* %5, align 4
  %68 = shl i32 %67, 8
  %69 = or i32 32768, %68
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @REG_WRITE(i32 %66, i32 6, i32 %71)
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %35

76:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %87, %76
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 8
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load i32, i32* @REG_GLOBAL2, align 4
  %82 = load i32, i32* %5, align 4
  %83 = shl i32 %82, 12
  %84 = or i32 32768, %83
  %85 = or i32 %84, 255
  %86 = call i32 @REG_WRITE(i32 %81, i32 7, i32 %85)
  br label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %77

90:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %100, %90
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %92, 16
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i32, i32* @REG_GLOBAL2, align 4
  %96 = load i32, i32* %5, align 4
  %97 = shl i32 %96, 11
  %98 = or i32 32768, %97
  %99 = call i32 @REG_WRITE(i32 %95, i32 8, i32 %98)
  br label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %91

103:                                              ; preds = %91
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %113, %103
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 6
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load i32, i32* @REG_GLOBAL2, align 4
  %109 = load i32, i32* %5, align 4
  %110 = shl i32 %109, 8
  %111 = or i32 36864, %110
  %112 = call i32 @REG_WRITE(i32 %108, i32 9, i32 %111)
  br label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %104

116:                                              ; preds = %104
  %117 = load i32, i32* @REG_GLOBAL2, align 4
  %118 = call i32 @REG_WRITE(i32 %117, i32 11, i32 36864)
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %128, %116
  %120 = load i32, i32* %5, align 4
  %121 = icmp slt i32 %120, 16
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load i32, i32* @REG_GLOBAL2, align 4
  %124 = load i32, i32* %5, align 4
  %125 = shl i32 %124, 8
  %126 = or i32 32768, %125
  %127 = call i32 @REG_WRITE(i32 %123, i32 15, i32 %126)
  br label %128

128:                                              ; preds = %122
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %119

131:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %15
  %133 = load i32, i32* %2, align 4
  ret i32 %133
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
