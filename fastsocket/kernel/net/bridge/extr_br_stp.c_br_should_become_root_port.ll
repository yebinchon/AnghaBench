; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp.c_br_should_become_root_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp.c_br_should_become_root_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, i64, i64, i64, i64, i32, i32, %struct.net_bridge* }
%struct.net_bridge = type { i32 }

@BR_STATE_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge_port*, i32)* @br_should_become_root_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_should_become_root_port(%struct.net_bridge_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.net_bridge_port*, align 8
  %8 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %10 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %9, i32 0, i32 7
  %11 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  store %struct.net_bridge* %11, %struct.net_bridge** %6, align 8
  %12 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %13 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BR_STATE_DISABLED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %19 = call i64 @br_is_designated_port(%struct.net_bridge_port* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %129

22:                                               ; preds = %17
  %23 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %24 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %23, i32 0, i32 0
  %25 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %26 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %25, i32 0, i32 6
  %27 = call i32 @memcmp(i32* %24, i32* %26, i32 8)
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %129

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %129

34:                                               ; preds = %30
  %35 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.net_bridge_port* @br_get_port(%struct.net_bridge* %35, i32 %36)
  store %struct.net_bridge_port* %37, %struct.net_bridge_port** %7, align 8
  %38 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %39 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %38, i32 0, i32 6
  %40 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %41 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %40, i32 0, i32 6
  %42 = call i32 @memcmp(i32* %39, i32* %41, i32 8)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %129

46:                                               ; preds = %34
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %129

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %53 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %56 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %60 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %63 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = icmp slt i64 %58, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %129

68:                                               ; preds = %51
  %69 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %70 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %73 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %77 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %80 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = icmp sgt i64 %75, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %129

85:                                               ; preds = %68
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %88 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %87, i32 0, i32 5
  %89 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %90 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %89, i32 0, i32 5
  %91 = call i32 @memcmp(i32* %88, i32* %90, i32 8)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i32 1, i32* %3, align 4
  br label %129

95:                                               ; preds = %86
  %96 = load i32, i32* %8, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 0, i32* %3, align 4
  br label %129

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %102 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %105 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 1, i32* %3, align 4
  br label %129

109:                                              ; preds = %100
  %110 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %111 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %114 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %129

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %121 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %124 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %122, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  store i32 1, i32* %3, align 4
  br label %129

128:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %127, %117, %108, %98, %94, %84, %67, %49, %45, %33, %29, %21
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i64 @br_is_designated_port(%struct.net_bridge_port*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local %struct.net_bridge_port* @br_get_port(%struct.net_bridge*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
