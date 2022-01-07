; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arp_tables.c_mark_source_chains.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arp_tables.c_mark_source_chains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_table_info = type { i32*, i32 }
%struct.arpt_entry = type { i32, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.arpt_standard_target = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@NF_ARP_NUMHOOKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"arptables: loop hook %u pos %u %08X.\0A\00", align 1
@ARPT_STANDARD_TARGET = common dso_local global i32 0, align 4
@NF_MAX_VERDICT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"mark_source_chains: bad negative verdict (%i)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"mark_source_chains: bad verdict (%i)\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Jump rule %u -> %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Finished chain %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_table_info*, i32, i8*)* @mark_source_chains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_source_chains(%struct.xt_table_info* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xt_table_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.arpt_entry*, align 8
  %11 = alloca %struct.arpt_standard_target*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.xt_table_info* %0, %struct.xt_table_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %236, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @NF_ARP_NUMHOOKS, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %239

20:                                               ; preds = %16
  %21 = load %struct.xt_table_info*, %struct.xt_table_info** %5, align 8
  %22 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr i8, i8* %28, i64 %30
  %32 = bitcast i8* %31 to %struct.arpt_entry*
  store %struct.arpt_entry* %32, %struct.arpt_entry** %10, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %20
  br label %236

39:                                               ; preds = %20
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.arpt_entry*, %struct.arpt_entry** %10, align 8
  %42 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %232, %39
  %45 = load %struct.arpt_entry*, %struct.arpt_entry** %10, align 8
  %46 = call i64 @arpt_get_target(%struct.arpt_entry* %45)
  %47 = inttoptr i64 %46 to i8*
  %48 = bitcast i8* %47 to %struct.arpt_standard_target*
  store %struct.arpt_standard_target* %48, %struct.arpt_standard_target** %11, align 8
  %49 = load %struct.arpt_entry*, %struct.arpt_entry** %10, align 8
  %50 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  store i32 %54, i32* %12, align 4
  %55 = load %struct.arpt_entry*, %struct.arpt_entry** %10, align 8
  %56 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NF_ARP_NUMHOOKS, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %44
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.arpt_entry*, %struct.arpt_entry** %10, align 8
  %66 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i32 %67)
  store i32 0, i32* %4, align 4
  br label %240

69:                                               ; preds = %44
  %70 = load i32, i32* %8, align 4
  %71 = shl i32 1, %70
  %72 = load i32, i32* @NF_ARP_NUMHOOKS, align 4
  %73 = shl i32 1, %72
  %74 = or i32 %71, %73
  %75 = load %struct.arpt_entry*, %struct.arpt_entry** %10, align 8
  %76 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.arpt_entry*, %struct.arpt_entry** %10, align 8
  %80 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp eq i64 %82, 20
  br i1 %83, label %84, label %104

84:                                               ; preds = %69
  %85 = load %struct.arpt_standard_target*, %struct.arpt_standard_target** %11, align 8
  %86 = getelementptr inbounds %struct.arpt_standard_target, %struct.arpt_standard_target* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ARPT_STANDARD_TARGET, align 4
  %92 = call i64 @strcmp(i32 %90, i32 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %84
  %95 = load %struct.arpt_standard_target*, %struct.arpt_standard_target** %11, align 8
  %96 = getelementptr inbounds %struct.arpt_standard_target, %struct.arpt_standard_target* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.arpt_entry*, %struct.arpt_entry** %10, align 8
  %101 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %100, i32 0, i32 4
  %102 = call i64 @unconditional(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %99, %94, %84, %69
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %183

107:                                              ; preds = %104, %99
  %108 = load %struct.arpt_standard_target*, %struct.arpt_standard_target** %11, align 8
  %109 = getelementptr inbounds %struct.arpt_standard_target, %struct.arpt_standard_target* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ARPT_STANDARD_TARGET, align 4
  %115 = call i64 @strcmp(i32 %113, i32 %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %107
  %118 = load %struct.arpt_standard_target*, %struct.arpt_standard_target** %11, align 8
  %119 = getelementptr inbounds %struct.arpt_standard_target, %struct.arpt_standard_target* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @NF_MAX_VERDICT, align 4
  %122 = sub nsw i32 0, %121
  %123 = sub nsw i32 %122, 1
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %117
  %126 = load %struct.arpt_standard_target*, %struct.arpt_standard_target** %11, align 8
  %127 = getelementptr inbounds %struct.arpt_standard_target, %struct.arpt_standard_target* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, i32, ...) @duprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  store i32 0, i32* %4, align 4
  br label %240

130:                                              ; preds = %117, %107
  br label %131

131:                                              ; preds = %156, %130
  %132 = load i32, i32* @NF_ARP_NUMHOOKS, align 4
  %133 = shl i32 1, %132
  %134 = load %struct.arpt_entry*, %struct.arpt_entry** %10, align 8
  %135 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = xor i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %13, align 4
  %139 = load %struct.arpt_entry*, %struct.arpt_entry** %10, align 8
  %140 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %9, align 4
  %143 = load %struct.arpt_entry*, %struct.arpt_entry** %10, align 8
  %144 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  store i32 0, i32* %145, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %131
  br label %233

150:                                              ; preds = %131
  %151 = load i8*, i8** %7, align 8
  %152 = load i32, i32* %9, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr i8, i8* %151, i64 %153
  %155 = bitcast i8* %154 to %struct.arpt_entry*
  store %struct.arpt_entry* %155, %struct.arpt_entry** %10, align 8
  br label %156

156:                                              ; preds = %150
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.arpt_entry*, %struct.arpt_entry** %10, align 8
  %160 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = add i32 %158, %161
  %163 = icmp eq i32 %157, %162
  br i1 %163, label %131, label %164

164:                                              ; preds = %156
  %165 = load %struct.arpt_entry*, %struct.arpt_entry** %10, align 8
  %166 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %14, align 4
  %168 = load i8*, i8** %7, align 8
  %169 = load i32, i32* %9, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr i8, i8* %168, i64 %170
  %172 = load i32, i32* %14, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr i8, i8* %171, i64 %173
  %175 = bitcast i8* %174 to %struct.arpt_entry*
  store %struct.arpt_entry* %175, %struct.arpt_entry** %10, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.arpt_entry*, %struct.arpt_entry** %10, align 8
  %178 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %9, align 4
  %182 = add i32 %181, %180
  store i32 %182, i32* %9, align 4
  br label %232

183:                                              ; preds = %104
  %184 = load %struct.arpt_standard_target*, %struct.arpt_standard_target** %11, align 8
  %185 = getelementptr inbounds %struct.arpt_standard_target, %struct.arpt_standard_target* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %15, align 4
  %187 = load %struct.arpt_standard_target*, %struct.arpt_standard_target** %11, align 8
  %188 = getelementptr inbounds %struct.arpt_standard_target, %struct.arpt_standard_target* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @ARPT_STANDARD_TARGET, align 4
  %194 = call i64 @strcmp(i32 %192, i32 %193)
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %215

196:                                              ; preds = %183
  %197 = load i32, i32* %15, align 4
  %198 = icmp sge i32 %197, 0
  br i1 %198, label %199, label %215

199:                                              ; preds = %196
  %200 = load i32, i32* %15, align 4
  %201 = sext i32 %200 to i64
  %202 = load %struct.xt_table_info*, %struct.xt_table_info** %5, align 8
  %203 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = sub i64 %205, 20
  %207 = icmp ugt i64 %201, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %199
  %209 = load i32, i32* %15, align 4
  %210 = call i32 (i8*, i32, ...) @duprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %209)
  store i32 0, i32* %4, align 4
  br label %240

211:                                              ; preds = %199
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %15, align 4
  %214 = call i32 (i8*, i32, ...) @duprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %212, i32 %213)
  br label %221

215:                                              ; preds = %196, %183
  %216 = load i32, i32* %9, align 4
  %217 = load %struct.arpt_entry*, %struct.arpt_entry** %10, align 8
  %218 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = add i32 %216, %219
  store i32 %220, i32* %15, align 4
  br label %221

221:                                              ; preds = %215, %211
  %222 = load i8*, i8** %7, align 8
  %223 = load i32, i32* %15, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr i8, i8* %222, i64 %224
  %226 = bitcast i8* %225 to %struct.arpt_entry*
  store %struct.arpt_entry* %226, %struct.arpt_entry** %10, align 8
  %227 = load i32, i32* %9, align 4
  %228 = load %struct.arpt_entry*, %struct.arpt_entry** %10, align 8
  %229 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  store i32 %227, i32* %230, align 4
  %231 = load i32, i32* %15, align 4
  store i32 %231, i32* %9, align 4
  br label %232

232:                                              ; preds = %221, %164
  br label %44

233:                                              ; preds = %149
  %234 = load i32, i32* %8, align 4
  %235 = call i32 (i8*, i32, ...) @duprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %234)
  br label %236

236:                                              ; preds = %233, %38
  %237 = load i32, i32* %8, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %8, align 4
  br label %16

239:                                              ; preds = %16
  store i32 1, i32* %4, align 4
  br label %240

240:                                              ; preds = %239, %208, %125, %62
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i64 @arpt_get_target(%struct.arpt_entry*) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @unconditional(i32*) #1

declare dso_local i32 @duprintf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
