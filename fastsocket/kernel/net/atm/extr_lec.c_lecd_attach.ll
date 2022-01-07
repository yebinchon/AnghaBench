; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lecd_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lecd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.atm_vcc = type { i32, %struct.TYPE_9__*, i32* }
%struct.lec_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atm_vcc* }

@MAX_LEC_ITF = common dso_local global i32 0, align 4
@NUM_TR_DEVS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dev_lec = common dso_local global %struct.TYPE_9__** null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"lec%d\00", align 1
@EADDRINUSE = common dso_local global i32 0, align 4
@lecatm_dev = common dso_local global i32 0, align 4
@ATM_VF_META = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, i32)* @lecd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lecd_attach(%struct.atm_vcc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lec_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %13, %12
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MAX_LEC_ITF, align 4
  %18 = load i32, i32* @NUM_TR_DEVS, align 4
  %19 = sub nsw i32 %17, %18
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %196

24:                                               ; preds = %15
  %25 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @dev_lec, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 %27
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %97, label %31

31:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MAX_LEC_ITF, align 4
  %34 = load i32, i32* @NUM_TR_DEVS, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %31
  store i32 64, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call %struct.TYPE_9__* @alloc_etherdev(i32 %39)
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @dev_lec, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %41, i64 %43
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %44, align 8
  %45 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @dev_lec, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %45, i64 %47
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = icmp ne %struct.TYPE_9__* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %38
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %196

54:                                               ; preds = %38
  %55 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @dev_lec, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %55, i64 %57
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IFNAMSIZ, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @snprintf(i32 %61, i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @dev_lec, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %65, i64 %67
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = call i64 @register_netdev(%struct.TYPE_9__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %54
  %73 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @dev_lec, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %73, i64 %75
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = call i32 @free_netdev(%struct.TYPE_9__* %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %196

81:                                               ; preds = %54
  %82 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @dev_lec, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %82, i64 %84
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = call %struct.lec_priv* @netdev_priv(%struct.TYPE_9__* %86)
  store %struct.lec_priv* %87, %struct.lec_priv** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %90 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @dev_lec, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %91, i64 %93
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = call i32 @lec_init(%struct.TYPE_9__* %95)
  br label %112

97:                                               ; preds = %24
  %98 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @dev_lec, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %98, i64 %100
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = call %struct.lec_priv* @netdev_priv(%struct.TYPE_9__* %102)
  store %struct.lec_priv* %103, %struct.lec_priv** %7, align 8
  %104 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %105 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %104, i32 0, i32 12
  %106 = load %struct.atm_vcc*, %struct.atm_vcc** %105, align 8
  %107 = icmp ne %struct.atm_vcc* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %97
  %109 = load i32, i32* @EADDRINUSE, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %196

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111, %81
  %113 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %114 = call i32 @lec_arp_init(%struct.lec_priv* %113)
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %117 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %119 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %120 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %119, i32 0, i32 12
  store %struct.atm_vcc* %118, %struct.atm_vcc** %120, align 8
  %121 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %122 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %121, i32 0, i32 2
  store i32* @lecatm_dev, i32** %122, align 8
  %123 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %124 = call i32 @sk_atm(%struct.atm_vcc* %123)
  %125 = call i32 @vcc_insert_socket(i32 %124)
  %126 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @dev_lec, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %126, i64 %128
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %132 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %131, i32 0, i32 1
  store %struct.TYPE_9__* %130, %struct.TYPE_9__** %132, align 8
  %133 = load i32, i32* @ATM_VF_META, align 4
  %134 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %135 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %134, i32 0, i32 0
  %136 = call i32 @set_bit(i32 %133, i32* %135)
  %137 = load i32, i32* @ATM_VF_READY, align 4
  %138 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %139 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %138, i32 0, i32 0
  %140 = call i32 @set_bit(i32 %137, i32* %139)
  %141 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %142 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %141, i32 0, i32 2
  store i32 1, i32* %142, align 8
  %143 = load i32, i32* @HZ, align 4
  %144 = mul nsw i32 1, %143
  %145 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %146 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* @HZ, align 4
  %148 = mul nsw i32 1200, %147
  %149 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %150 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  %151 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %152 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %151, i32 0, i32 5
  store i32 1, i32* %152, align 4
  %153 = load i32, i32* @HZ, align 4
  %154 = mul nsw i32 300, %153
  %155 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %156 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* @HZ, align 4
  %158 = mul nsw i32 15, %157
  %159 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %160 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %159, i32 0, i32 7
  store i32 %158, i32* %160, align 4
  %161 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %162 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %161, i32 0, i32 11
  store i64 0, i64* %162, align 8
  %163 = load i32, i32* @HZ, align 4
  %164 = mul nsw i32 1, %163
  %165 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %166 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %165, i32 0, i32 8
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* @HZ, align 4
  %168 = mul nsw i32 4, %167
  %169 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %170 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %169, i32 0, i32 9
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @HZ, align 4
  %172 = mul nsw i32 6, %171
  %173 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %174 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %173, i32 0, i32 10
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @dev_lec, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %175, i64 %177
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @IFF_UP, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %112
  %186 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @dev_lec, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %186, i64 %188
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = call i32 @netif_start_queue(%struct.TYPE_9__* %190)
  br label %192

192:                                              ; preds = %185, %112
  %193 = load i32, i32* @THIS_MODULE, align 4
  %194 = call i32 @__module_get(i32 %193)
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %192, %108, %72, %51, %21
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local %struct.TYPE_9__* @alloc_etherdev(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i64 @register_netdev(%struct.TYPE_9__*) #1

declare dso_local i32 @free_netdev(%struct.TYPE_9__*) #1

declare dso_local %struct.lec_priv* @netdev_priv(%struct.TYPE_9__*) #1

declare dso_local i32 @lec_init(%struct.TYPE_9__*) #1

declare dso_local i32 @lec_arp_init(%struct.lec_priv*) #1

declare dso_local i32 @vcc_insert_socket(i32) #1

declare dso_local i32 @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_start_queue(%struct.TYPE_9__*) #1

declare dso_local i32 @__module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
