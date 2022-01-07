; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_src_default_config_arcrw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_src_default_config_arcrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.src = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32, %struct.hw* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)* }
%struct.hw = type { i32 (i32)*, i32 (%struct.hw*, i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)* }

@SRC_STATE_OFF = common dso_local global i32 0, align 4
@SRC_SF_F32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.src*)* @src_default_config_arcrw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @src_default_config_arcrw(%struct.src* %0) #0 {
  %2 = alloca %struct.src*, align 8
  %3 = alloca %struct.hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.src* %0, %struct.src** %2, align 8
  %7 = load %struct.src*, %struct.src** %2, align 8
  %8 = getelementptr inbounds %struct.src, %struct.src* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %10 = load %struct.hw*, %struct.hw** %9, align 8
  store %struct.hw* %10, %struct.hw** %3, align 8
  %11 = load %struct.hw*, %struct.hw** %3, align 8
  %12 = getelementptr inbounds %struct.hw, %struct.hw* %11, i32 0, i32 18
  %13 = load i32 (i32, i32)*, i32 (i32, i32)** %12, align 8
  %14 = load %struct.src*, %struct.src** %2, align 8
  %15 = getelementptr inbounds %struct.src, %struct.src* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SRC_STATE_OFF, align 4
  %19 = call i32 %13(i32 %17, i32 %18)
  %20 = load %struct.hw*, %struct.hw** %3, align 8
  %21 = getelementptr inbounds %struct.hw, %struct.hw* %20, i32 0, i32 17
  %22 = load i32 (i32, i32)*, i32 (i32, i32)** %21, align 8
  %23 = load %struct.src*, %struct.src** %2, align 8
  %24 = getelementptr inbounds %struct.src, %struct.src* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %22(i32 %26, i32 0)
  store i32 0, i32* %4, align 4
  %28 = load %struct.src*, %struct.src** %2, align 8
  %29 = getelementptr inbounds %struct.src, %struct.src* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %38, %1
  %33 = load i32, i32* %5, align 4
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = lshr i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %32

41:                                               ; preds = %32
  %42 = load %struct.hw*, %struct.hw** %3, align 8
  %43 = getelementptr inbounds %struct.hw, %struct.hw* %42, i32 0, i32 16
  %44 = load i32 (i32, i32)*, i32 (i32, i32)** %43, align 8
  %45 = load %struct.src*, %struct.src** %2, align 8
  %46 = getelementptr inbounds %struct.src, %struct.src* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 %44(i32 %48, i32 %49)
  %51 = load %struct.hw*, %struct.hw** %3, align 8
  %52 = getelementptr inbounds %struct.hw, %struct.hw* %51, i32 0, i32 15
  %53 = load i32 (i32, i32)*, i32 (i32, i32)** %52, align 8
  %54 = load %struct.src*, %struct.src** %2, align 8
  %55 = getelementptr inbounds %struct.src, %struct.src* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SRC_SF_F32, align 4
  %59 = call i32 %53(i32 %57, i32 %58)
  %60 = load %struct.hw*, %struct.hw** %3, align 8
  %61 = getelementptr inbounds %struct.hw, %struct.hw* %60, i32 0, i32 14
  %62 = load i32 (i32, i32)*, i32 (i32, i32)** %61, align 8
  %63 = load %struct.src*, %struct.src** %2, align 8
  %64 = getelementptr inbounds %struct.src, %struct.src* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 %62(i32 %66, i32 0)
  %68 = load %struct.hw*, %struct.hw** %3, align 8
  %69 = getelementptr inbounds %struct.hw, %struct.hw* %68, i32 0, i32 13
  %70 = load i32 (i32, i32)*, i32 (i32, i32)** %69, align 8
  %71 = load %struct.src*, %struct.src** %2, align 8
  %72 = getelementptr inbounds %struct.src, %struct.src* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 %70(i32 %74, i32 0)
  %76 = load %struct.hw*, %struct.hw** %3, align 8
  %77 = getelementptr inbounds %struct.hw, %struct.hw* %76, i32 0, i32 12
  %78 = load i32 (i32, i32)*, i32 (i32, i32)** %77, align 8
  %79 = load %struct.src*, %struct.src** %2, align 8
  %80 = getelementptr inbounds %struct.src, %struct.src* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 %78(i32 %82, i32 0)
  %84 = load %struct.hw*, %struct.hw** %3, align 8
  %85 = getelementptr inbounds %struct.hw, %struct.hw* %84, i32 0, i32 11
  %86 = load i32 (i32, i32)*, i32 (i32, i32)** %85, align 8
  %87 = load %struct.src*, %struct.src** %2, align 8
  %88 = getelementptr inbounds %struct.src, %struct.src* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 %86(i32 %90, i32 0)
  %92 = load %struct.hw*, %struct.hw** %3, align 8
  %93 = getelementptr inbounds %struct.hw, %struct.hw* %92, i32 0, i32 10
  %94 = load i32 (i32, i32)*, i32 (i32, i32)** %93, align 8
  %95 = load %struct.src*, %struct.src** %2, align 8
  %96 = getelementptr inbounds %struct.src, %struct.src* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 %94(i32 %98, i32 0)
  %100 = load %struct.hw*, %struct.hw** %3, align 8
  %101 = getelementptr inbounds %struct.hw, %struct.hw* %100, i32 0, i32 9
  %102 = load i32 (i32, i32)*, i32 (i32, i32)** %101, align 8
  %103 = load %struct.src*, %struct.src** %2, align 8
  %104 = getelementptr inbounds %struct.src, %struct.src* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 %102(i32 %106, i32 0)
  %108 = load %struct.hw*, %struct.hw** %3, align 8
  %109 = getelementptr inbounds %struct.hw, %struct.hw* %108, i32 0, i32 8
  %110 = load i32 (i32, i32)*, i32 (i32, i32)** %109, align 8
  %111 = load %struct.src*, %struct.src** %2, align 8
  %112 = getelementptr inbounds %struct.src, %struct.src* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 %110(i32 %114, i32 128)
  %116 = load %struct.hw*, %struct.hw** %3, align 8
  %117 = getelementptr inbounds %struct.hw, %struct.hw* %116, i32 0, i32 7
  %118 = load i32 (i32, i32)*, i32 (i32, i32)** %117, align 8
  %119 = load %struct.src*, %struct.src** %2, align 8
  %120 = getelementptr inbounds %struct.src, %struct.src* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 %118(i32 %122, i32 0)
  %124 = load %struct.hw*, %struct.hw** %3, align 8
  %125 = getelementptr inbounds %struct.hw, %struct.hw* %124, i32 0, i32 6
  %126 = load i32 (i32, i32)*, i32 (i32, i32)** %125, align 8
  %127 = load %struct.src*, %struct.src** %2, align 8
  %128 = getelementptr inbounds %struct.src, %struct.src* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 %126(i32 %130, i32 4096)
  %132 = load %struct.hw*, %struct.hw** %3, align 8
  %133 = getelementptr inbounds %struct.hw, %struct.hw* %132, i32 0, i32 5
  %134 = load i32 (i32, i32)*, i32 (i32, i32)** %133, align 8
  %135 = load %struct.src*, %struct.src** %2, align 8
  %136 = getelementptr inbounds %struct.src, %struct.src* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 %134(i32 %138, i32 128)
  %140 = load %struct.hw*, %struct.hw** %3, align 8
  %141 = getelementptr inbounds %struct.hw, %struct.hw* %140, i32 0, i32 4
  %142 = load i32 (i32, i32)*, i32 (i32, i32)** %141, align 8
  %143 = load %struct.src*, %struct.src** %2, align 8
  %144 = getelementptr inbounds %struct.src, %struct.src* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 %142(i32 %146, i32 16777216)
  %148 = load %struct.hw*, %struct.hw** %3, align 8
  %149 = getelementptr inbounds %struct.hw, %struct.hw* %148, i32 0, i32 3
  %150 = load i32 (i32, i32)*, i32 (i32, i32)** %149, align 8
  %151 = load %struct.src*, %struct.src** %2, align 8
  %152 = getelementptr inbounds %struct.src, %struct.src* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 %150(i32 %154, i32 1)
  %156 = load %struct.hw*, %struct.hw** %3, align 8
  %157 = getelementptr inbounds %struct.hw, %struct.hw* %156, i32 0, i32 0
  %158 = load i32 (i32)*, i32 (i32)** %157, align 8
  %159 = load %struct.src*, %struct.src** %2, align 8
  %160 = getelementptr inbounds %struct.src, %struct.src* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 %158(i32 %162)
  store i32 %163, i32* %6, align 4
  %164 = load %struct.src*, %struct.src** %2, align 8
  %165 = getelementptr inbounds %struct.src, %struct.src* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %168, align 8
  %170 = load %struct.src*, %struct.src** %2, align 8
  %171 = getelementptr inbounds %struct.src, %struct.src* %170, i32 0, i32 0
  %172 = call i32 %169(%struct.TYPE_7__* %171)
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %217, %41
  %174 = load i32, i32* %5, align 4
  %175 = load %struct.src*, %struct.src** %2, align 8
  %176 = getelementptr inbounds %struct.src, %struct.src* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ult i32 %174, %178
  br i1 %179, label %180, label %220

180:                                              ; preds = %173
  %181 = load %struct.hw*, %struct.hw** %3, align 8
  %182 = getelementptr inbounds %struct.hw, %struct.hw* %181, i32 0, i32 2
  %183 = load i32 (i32, i32)*, i32 (i32, i32)** %182, align 8
  %184 = load %struct.src*, %struct.src** %2, align 8
  %185 = getelementptr inbounds %struct.src, %struct.src* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = call i32 %183(i32 %187, i32 %188)
  %190 = load %struct.hw*, %struct.hw** %3, align 8
  %191 = getelementptr inbounds %struct.hw, %struct.hw* %190, i32 0, i32 1
  %192 = load i32 (%struct.hw*, i32, i32)*, i32 (%struct.hw*, i32, i32)** %191, align 8
  %193 = load %struct.hw*, %struct.hw** %3, align 8
  %194 = load %struct.src*, %struct.src** %2, align 8
  %195 = getelementptr inbounds %struct.src, %struct.src* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  %199 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %198, align 8
  %200 = load %struct.src*, %struct.src** %2, align 8
  %201 = getelementptr inbounds %struct.src, %struct.src* %200, i32 0, i32 0
  %202 = call i32 %199(%struct.TYPE_7__* %201)
  %203 = load %struct.src*, %struct.src** %2, align 8
  %204 = getelementptr inbounds %struct.src, %struct.src* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 %192(%struct.hw* %193, i32 %202, i32 %206)
  %208 = load %struct.src*, %struct.src** %2, align 8
  %209 = getelementptr inbounds %struct.src, %struct.src* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %212, align 8
  %214 = load %struct.src*, %struct.src** %2, align 8
  %215 = getelementptr inbounds %struct.src, %struct.src* %214, i32 0, i32 0
  %216 = call i32 %213(%struct.TYPE_7__* %215)
  br label %217

217:                                              ; preds = %180
  %218 = load i32, i32* %5, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %5, align 4
  br label %173

220:                                              ; preds = %173
  %221 = load %struct.src*, %struct.src** %2, align 8
  %222 = getelementptr inbounds %struct.src, %struct.src* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %225, align 8
  %227 = load %struct.src*, %struct.src** %2, align 8
  %228 = getelementptr inbounds %struct.src, %struct.src* %227, i32 0, i32 0
  %229 = call i32 %226(%struct.TYPE_7__* %228)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
