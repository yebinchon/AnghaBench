; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctamixer.c_amixer_commit_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctamixer.c_amixer_commit_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amixer = type { %struct.TYPE_16__, %struct.sum*, %struct.rsc* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_12__*, i32, %struct.hw* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)* }
%struct.hw = type { i32 (%struct.hw*, i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32)* }
%struct.sum = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)* }
%struct.rsc = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.rsc*)*, i32 (%struct.rsc*)*, i32 (%struct.rsc*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amixer*)* @amixer_commit_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amixer_commit_write(%struct.amixer* %0) #0 {
  %2 = alloca %struct.amixer*, align 8
  %3 = alloca %struct.hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsc*, align 8
  %7 = alloca %struct.sum*, align 8
  store %struct.amixer* %0, %struct.amixer** %2, align 8
  %8 = load %struct.amixer*, %struct.amixer** %2, align 8
  %9 = getelementptr inbounds %struct.amixer, %struct.amixer* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  %11 = load %struct.hw*, %struct.hw** %10, align 8
  store %struct.hw* %11, %struct.hw** %3, align 8
  %12 = load %struct.amixer*, %struct.amixer** %2, align 8
  %13 = getelementptr inbounds %struct.amixer, %struct.amixer* %12, i32 0, i32 2
  %14 = load %struct.rsc*, %struct.rsc** %13, align 8
  store %struct.rsc* %14, %struct.rsc** %6, align 8
  %15 = load %struct.amixer*, %struct.amixer** %2, align 8
  %16 = getelementptr inbounds %struct.amixer, %struct.amixer* %15, i32 0, i32 1
  %17 = load %struct.sum*, %struct.sum** %16, align 8
  store %struct.sum* %17, %struct.sum** %7, align 8
  %18 = load %struct.amixer*, %struct.amixer** %2, align 8
  %19 = getelementptr inbounds %struct.amixer, %struct.amixer* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %22, align 8
  %24 = load %struct.amixer*, %struct.amixer** %2, align 8
  %25 = getelementptr inbounds %struct.amixer, %struct.amixer* %24, i32 0, i32 0
  %26 = call i32 %23(%struct.TYPE_16__* %25)
  %27 = load %struct.rsc*, %struct.rsc** %6, align 8
  %28 = icmp ne %struct.rsc* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.rsc*, %struct.rsc** %6, align 8
  %31 = getelementptr inbounds %struct.rsc, %struct.rsc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %33, align 8
  %35 = load %struct.rsc*, %struct.rsc** %6, align 8
  %36 = call i32 %34(%struct.rsc* %35)
  br label %37

37:                                               ; preds = %29, %1
  %38 = load %struct.sum*, %struct.sum** %7, align 8
  %39 = icmp ne %struct.sum* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.sum*, %struct.sum** %7, align 8
  %42 = getelementptr inbounds %struct.sum, %struct.sum* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %45, align 8
  %47 = load %struct.sum*, %struct.sum** %7, align 8
  %48 = getelementptr inbounds %struct.sum, %struct.sum* %47, i32 0, i32 0
  %49 = call i32 %46(%struct.TYPE_15__* %48)
  br label %50

50:                                               ; preds = %40, %37
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %151, %50
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.amixer*, %struct.amixer** %2, align 8
  %54 = getelementptr inbounds %struct.amixer, %struct.amixer* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %154

58:                                               ; preds = %51
  %59 = load %struct.hw*, %struct.hw** %3, align 8
  %60 = getelementptr inbounds %struct.hw, %struct.hw* %59, i32 0, i32 3
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = load %struct.amixer*, %struct.amixer** %2, align 8
  %63 = getelementptr inbounds %struct.amixer, %struct.amixer* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %61(i32 %65)
  %67 = load %struct.rsc*, %struct.rsc** %6, align 8
  %68 = icmp ne %struct.rsc* %67, null
  br i1 %68, label %69, label %92

69:                                               ; preds = %58
  %70 = load %struct.hw*, %struct.hw** %3, align 8
  %71 = getelementptr inbounds %struct.hw, %struct.hw* %70, i32 0, i32 2
  %72 = load i32 (i32, i32)*, i32 (i32, i32)** %71, align 8
  %73 = load %struct.amixer*, %struct.amixer** %2, align 8
  %74 = getelementptr inbounds %struct.amixer, %struct.amixer* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.rsc*, %struct.rsc** %6, align 8
  %78 = getelementptr inbounds %struct.rsc, %struct.rsc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %80, align 8
  %82 = load %struct.rsc*, %struct.rsc** %6, align 8
  %83 = call i32 %81(%struct.rsc* %82)
  %84 = call i32 %72(i32 %76, i32 %83)
  %85 = load %struct.rsc*, %struct.rsc** %6, align 8
  %86 = getelementptr inbounds %struct.rsc, %struct.rsc* %85, i32 0, i32 0
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %88, align 8
  %90 = load %struct.rsc*, %struct.rsc** %6, align 8
  %91 = call i32 %89(%struct.rsc* %90)
  br label %92

92:                                               ; preds = %69, %58
  %93 = load %struct.sum*, %struct.sum** %7, align 8
  %94 = icmp ne %struct.sum* %93, null
  br i1 %94, label %95, label %122

95:                                               ; preds = %92
  %96 = load %struct.hw*, %struct.hw** %3, align 8
  %97 = getelementptr inbounds %struct.hw, %struct.hw* %96, i32 0, i32 1
  %98 = load i32 (i32, i32)*, i32 (i32, i32)** %97, align 8
  %99 = load %struct.amixer*, %struct.amixer** %2, align 8
  %100 = getelementptr inbounds %struct.amixer, %struct.amixer* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.sum*, %struct.sum** %7, align 8
  %104 = getelementptr inbounds %struct.sum, %struct.sum* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  %108 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %107, align 8
  %109 = load %struct.sum*, %struct.sum** %7, align 8
  %110 = getelementptr inbounds %struct.sum, %struct.sum* %109, i32 0, i32 0
  %111 = call i32 %108(%struct.TYPE_15__* %110)
  %112 = call i32 %98(i32 %102, i32 %111)
  %113 = load %struct.sum*, %struct.sum** %7, align 8
  %114 = getelementptr inbounds %struct.sum, %struct.sum* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %117, align 8
  %119 = load %struct.sum*, %struct.sum** %7, align 8
  %120 = getelementptr inbounds %struct.sum, %struct.sum* %119, i32 0, i32 0
  %121 = call i32 %118(%struct.TYPE_15__* %120)
  br label %122

122:                                              ; preds = %95, %92
  %123 = load %struct.amixer*, %struct.amixer** %2, align 8
  %124 = getelementptr inbounds %struct.amixer, %struct.amixer* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %127, align 8
  %129 = load %struct.amixer*, %struct.amixer** %2, align 8
  %130 = getelementptr inbounds %struct.amixer, %struct.amixer* %129, i32 0, i32 0
  %131 = call i32 %128(%struct.TYPE_16__* %130)
  store i32 %131, i32* %4, align 4
  %132 = load %struct.hw*, %struct.hw** %3, align 8
  %133 = getelementptr inbounds %struct.hw, %struct.hw* %132, i32 0, i32 0
  %134 = load i32 (%struct.hw*, i32, i32)*, i32 (%struct.hw*, i32, i32)** %133, align 8
  %135 = load %struct.hw*, %struct.hw** %3, align 8
  %136 = load i32, i32* %4, align 4
  %137 = load %struct.amixer*, %struct.amixer** %2, align 8
  %138 = getelementptr inbounds %struct.amixer, %struct.amixer* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 %134(%struct.hw* %135, i32 %136, i32 %140)
  %142 = load %struct.amixer*, %struct.amixer** %2, align 8
  %143 = getelementptr inbounds %struct.amixer, %struct.amixer* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %146, align 8
  %148 = load %struct.amixer*, %struct.amixer** %2, align 8
  %149 = getelementptr inbounds %struct.amixer, %struct.amixer* %148, i32 0, i32 0
  %150 = call i32 %147(%struct.TYPE_16__* %149)
  br label %151

151:                                              ; preds = %122
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %5, align 4
  br label %51

154:                                              ; preds = %51
  %155 = load %struct.amixer*, %struct.amixer** %2, align 8
  %156 = getelementptr inbounds %struct.amixer, %struct.amixer* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %159, align 8
  %161 = load %struct.amixer*, %struct.amixer** %2, align 8
  %162 = getelementptr inbounds %struct.amixer, %struct.amixer* %161, i32 0, i32 0
  %163 = call i32 %160(%struct.TYPE_16__* %162)
  %164 = load %struct.rsc*, %struct.rsc** %6, align 8
  %165 = icmp ne %struct.rsc* %164, null
  br i1 %165, label %166, label %174

166:                                              ; preds = %154
  %167 = load %struct.rsc*, %struct.rsc** %6, align 8
  %168 = getelementptr inbounds %struct.rsc, %struct.rsc* %167, i32 0, i32 0
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %170, align 8
  %172 = load %struct.rsc*, %struct.rsc** %6, align 8
  %173 = call i32 %171(%struct.rsc* %172)
  br label %174

174:                                              ; preds = %166, %154
  %175 = load %struct.sum*, %struct.sum** %7, align 8
  %176 = icmp ne %struct.sum* %175, null
  br i1 %176, label %177, label %187

177:                                              ; preds = %174
  %178 = load %struct.sum*, %struct.sum** %7, align 8
  %179 = getelementptr inbounds %struct.sum, %struct.sum* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %182, align 8
  %184 = load %struct.sum*, %struct.sum** %7, align 8
  %185 = getelementptr inbounds %struct.sum, %struct.sum* %184, i32 0, i32 0
  %186 = call i32 %183(%struct.TYPE_15__* %185)
  br label %187

187:                                              ; preds = %177, %174
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
