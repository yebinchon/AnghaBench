; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebtables.c_ebt_basic_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebtables.c_ebt_basic_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_entry = type { i32, i64, i32*, i32*, i32*, i32*, i32, i32, i32, i32 }
%struct.ethhdr = type { i64, i32*, i32* }
%struct.net_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.net_device* }

@EBT_802_3 = common dso_local global i32 0, align 4
@EBT_IPROTO = common dso_local global i32 0, align 4
@EBT_NOPROTO = common dso_local global i32 0, align 4
@EBT_IIN = common dso_local global i32 0, align 4
@EBT_IOUT = common dso_local global i32 0, align 4
@EBT_ILOGICALIN = common dso_local global i32 0, align 4
@EBT_ILOGICALOUT = common dso_local global i32 0, align 4
@EBT_SOURCEMAC = common dso_local global i32 0, align 4
@EBT_ISOURCE = common dso_local global i32 0, align 4
@EBT_DESTMAC = common dso_local global i32 0, align 4
@EBT_IDEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_entry*, %struct.ethhdr*, %struct.net_device*, %struct.net_device*)* @ebt_basic_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_basic_match(%struct.ebt_entry* %0, %struct.ethhdr* %1, %struct.net_device* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ebt_entry*, align 8
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ebt_entry* %0, %struct.ebt_entry** %6, align 8
  store %struct.ethhdr* %1, %struct.ethhdr** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %12 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %13 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @EBT_802_3, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %20 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ntohs(i64 %21)
  %23 = icmp sge i32 %22, 1536
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @EBT_IPROTO, align 4
  %26 = call i64 @FWINV2(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %220

29:                                               ; preds = %18
  br label %51

30:                                               ; preds = %4
  %31 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %32 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @EBT_NOPROTO, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %30
  %38 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %39 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %42 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* @EBT_IPROTO, align 4
  %47 = call i64 @FWINV2(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %220

50:                                               ; preds = %37, %30
  br label %51

51:                                               ; preds = %50, %29
  %52 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %53 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = call i32 @ebt_dev_check(i32 %54, %struct.net_device* %55)
  %57 = load i32, i32* @EBT_IIN, align 4
  %58 = call i64 @FWINV2(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  br label %220

61:                                               ; preds = %51
  %62 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %63 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.net_device*, %struct.net_device** %9, align 8
  %66 = call i32 @ebt_dev_check(i32 %64, %struct.net_device* %65)
  %67 = load i32, i32* @EBT_IOUT, align 4
  %68 = call i64 @FWINV2(i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i32 1, i32* %5, align 4
  br label %220

71:                                               ; preds = %61
  %72 = load %struct.net_device*, %struct.net_device** %8, align 8
  %73 = icmp ne %struct.net_device* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.net_device*, %struct.net_device** %8, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = icmp ne %struct.TYPE_4__* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74, %71
  br i1 false, label %95, label %96

80:                                               ; preds = %74
  %81 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %82 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.net_device*, %struct.net_device** %8, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load %struct.net_device*, %struct.net_device** %89, align 8
  %91 = call i32 @ebt_dev_check(i32 %83, %struct.net_device* %90)
  %92 = load i32, i32* @EBT_ILOGICALIN, align 4
  %93 = call i64 @FWINV2(i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %80, %79
  store i32 1, i32* %5, align 4
  br label %220

96:                                               ; preds = %80, %79
  %97 = load %struct.net_device*, %struct.net_device** %9, align 8
  %98 = icmp ne %struct.net_device* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.net_device*, %struct.net_device** %9, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = icmp ne %struct.TYPE_4__* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %99, %96
  br i1 false, label %120, label %121

105:                                              ; preds = %99
  %106 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %107 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.net_device*, %struct.net_device** %9, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load %struct.net_device*, %struct.net_device** %114, align 8
  %116 = call i32 @ebt_dev_check(i32 %108, %struct.net_device* %115)
  %117 = load i32, i32* @EBT_ILOGICALOUT, align 4
  %118 = call i64 @FWINV2(i32 %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %105, %104
  store i32 1, i32* %5, align 4
  br label %220

121:                                              ; preds = %105, %104
  %122 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %123 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @EBT_SOURCEMAC, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %170

128:                                              ; preds = %121
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %129

129:                                              ; preds = %158, %128
  %130 = load i32, i32* %11, align 4
  %131 = icmp slt i32 %130, 6
  br i1 %131, label %132, label %161

132:                                              ; preds = %129
  %133 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %134 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %141 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = xor i32 %139, %146
  %148 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %149 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %147, %154
  %156 = load i32, i32* %10, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %10, align 4
  br label %158

158:                                              ; preds = %132
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %129

161:                                              ; preds = %129
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* @EBT_ISOURCE, align 4
  %166 = call i64 @FWINV2(i32 %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  store i32 1, i32* %5, align 4
  br label %220

169:                                              ; preds = %161
  br label %170

170:                                              ; preds = %169, %121
  %171 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %172 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @EBT_DESTMAC, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %219

177:                                              ; preds = %170
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %178

178:                                              ; preds = %207, %177
  %179 = load i32, i32* %11, align 4
  %180 = icmp slt i32 %179, 6
  br i1 %180, label %181, label %210

181:                                              ; preds = %178
  %182 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %183 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %190 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = xor i32 %188, %195
  %197 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %198 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %197, i32 0, i32 5
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %196, %203
  %205 = load i32, i32* %10, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %10, align 4
  br label %207

207:                                              ; preds = %181
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %11, align 4
  br label %178

210:                                              ; preds = %178
  %211 = load i32, i32* %10, align 4
  %212 = icmp ne i32 %211, 0
  %213 = zext i1 %212 to i32
  %214 = load i32, i32* @EBT_IDEST, align 4
  %215 = call i64 @FWINV2(i32 %213, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %210
  store i32 1, i32* %5, align 4
  br label %220

218:                                              ; preds = %210
  br label %219

219:                                              ; preds = %218, %170
  store i32 0, i32* %5, align 4
  br label %220

220:                                              ; preds = %219, %217, %168, %120, %95, %70, %60, %49, %28
  %221 = load i32, i32* %5, align 4
  ret i32 %221
}

declare dso_local i64 @FWINV2(i32, i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @ebt_dev_check(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
