; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebtables.c_check_chainloops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebtables.c_check_chainloops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_entries = type { i32, i64 }
%struct.ebt_cl_stack = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ebt_entry*, %struct.ebt_entries* }
%struct.ebt_entry = type { i32, i64 }
%struct.ebt_entry_target = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ebt_standard_target = type { i32 }

@EBT_STANDARD_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Standard target size too big\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"bad destination\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"loop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_entries*, %struct.ebt_cl_stack*, i32, i32, i8*)* @check_chainloops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_chainloops(%struct.ebt_entries* %0, %struct.ebt_cl_stack* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ebt_entries*, align 8
  %8 = alloca %struct.ebt_cl_stack*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ebt_entry*, align 8
  %18 = alloca %struct.ebt_entry_target*, align 8
  %19 = alloca %struct.ebt_entries*, align 8
  store %struct.ebt_entries* %0, %struct.ebt_entries** %7, align 8
  store %struct.ebt_cl_stack* %1, %struct.ebt_cl_stack** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.ebt_entries*, %struct.ebt_entries** %7, align 8
  %21 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %15, align 4
  %23 = load %struct.ebt_entries*, %struct.ebt_entries** %7, align 8
  %24 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ebt_entry*
  store %struct.ebt_entry* %26, %struct.ebt_entry** %17, align 8
  br label %27

27:                                               ; preds = %231, %189, %97, %5
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, -1
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i1 [ true, %27 ], [ %33, %31 ]
  br i1 %35, label %36, label %237

36:                                               ; preds = %34
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %99

40:                                               ; preds = %36
  %41 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %41, i64 %43
  %45 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.ebt_entry*, %struct.ebt_entry** %46, align 8
  store %struct.ebt_entry* %47, %struct.ebt_entry** %17, align 8
  %48 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %48, i64 %50
  %52 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %70

55:                                               ; preds = %40
  %56 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %57 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %57, i64 %59
  %61 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %56, i64 %63
  %65 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load %struct.ebt_entries*, %struct.ebt_entries** %66, align 8
  %68 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %15, align 4
  br label %74

70:                                               ; preds = %40
  %71 = load %struct.ebt_entries*, %struct.ebt_entries** %7, align 8
  %72 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %70, %55
  %75 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %75, i64 %77
  %79 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %14, align 4
  %82 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %82, i64 %84
  %86 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %88, i64 %90
  %92 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %74
  br label %27

98:                                               ; preds = %74
  br label %99

99:                                               ; preds = %98, %36
  %100 = load %struct.ebt_entry*, %struct.ebt_entry** %17, align 8
  %101 = bitcast %struct.ebt_entry* %100 to i8*
  %102 = load %struct.ebt_entry*, %struct.ebt_entry** %17, align 8
  %103 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %101, i64 %105
  %107 = bitcast i8* %106 to %struct.ebt_entry_target*
  store %struct.ebt_entry_target* %107, %struct.ebt_entry_target** %18, align 8
  %108 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %18, align 8
  %109 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @EBT_STANDARD_TARGET, align 4
  %113 = call i64 @strcmp(i32 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %99
  br label %231

116:                                              ; preds = %99
  %117 = load %struct.ebt_entry*, %struct.ebt_entry** %17, align 8
  %118 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = add i64 %120, 4
  %122 = load %struct.ebt_entry*, %struct.ebt_entry** %17, align 8
  %123 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ugt i64 %121, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = call i32 @BUGPRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %238

128:                                              ; preds = %116
  %129 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %18, align 8
  %130 = bitcast %struct.ebt_entry_target* %129 to %struct.ebt_standard_target*
  %131 = getelementptr inbounds %struct.ebt_standard_target, %struct.ebt_standard_target* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %16, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %230

135:                                              ; preds = %128
  %136 = load i8*, i8** %11, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = bitcast i8* %139 to %struct.ebt_entries*
  store %struct.ebt_entries* %140, %struct.ebt_entries** %19, align 8
  store i32 0, i32* %12, align 4
  br label %141

141:                                              ; preds = %157, %135
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %141
  %146 = load %struct.ebt_entries*, %struct.ebt_entries** %19, align 8
  %147 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %147, i64 %149
  %151 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load %struct.ebt_entries*, %struct.ebt_entries** %152, align 8
  %154 = icmp eq %struct.ebt_entries* %146, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  br label %160

156:                                              ; preds = %145
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %141

160:                                              ; preds = %155, %141
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = call i32 @BUGPRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %238

166:                                              ; preds = %160
  %167 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %167, i64 %169
  %171 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %166
  %176 = call i32 @BUGPRINT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %238

177:                                              ; preds = %166
  %178 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %178, i64 %180
  %182 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %10, align 4
  %185 = shl i32 1, %184
  %186 = and i32 %183, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %177
  br label %231

189:                                              ; preds = %177
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, 1
  %192 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %192, i64 %194
  %196 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  store i32 %191, i32* %197, align 8
  store i32 0, i32* %14, align 4
  %198 = load %struct.ebt_entry*, %struct.ebt_entry** %17, align 8
  %199 = call i8* @ebt_next_entry(%struct.ebt_entry* %198)
  %200 = bitcast i8* %199 to %struct.ebt_entry*
  %201 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %201, i64 %203
  %205 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  store %struct.ebt_entry* %200, %struct.ebt_entry** %206, align 8
  %207 = load %struct.ebt_entries*, %struct.ebt_entries** %19, align 8
  %208 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to %struct.ebt_entry*
  store %struct.ebt_entry* %210, %struct.ebt_entry** %17, align 8
  %211 = load %struct.ebt_entries*, %struct.ebt_entries** %19, align 8
  %212 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  store i32 %213, i32* %15, align 4
  %214 = load i32, i32* %13, align 4
  %215 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %215, i64 %217
  %219 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %218, i32 0, i32 0
  store i32 %214, i32* %219, align 8
  %220 = load i32, i32* %12, align 4
  store i32 %220, i32* %13, align 4
  %221 = load i32, i32* %10, align 4
  %222 = shl i32 1, %221
  %223 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %8, align 8
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %223, i64 %225
  %227 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %222
  store i32 %229, i32* %227, align 4
  br label %27

230:                                              ; preds = %128
  br label %231

231:                                              ; preds = %230, %188, %115
  %232 = load %struct.ebt_entry*, %struct.ebt_entry** %17, align 8
  %233 = call i8* @ebt_next_entry(%struct.ebt_entry* %232)
  %234 = bitcast i8* %233 to %struct.ebt_entry*
  store %struct.ebt_entry* %234, %struct.ebt_entry** %17, align 8
  %235 = load i32, i32* %14, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %14, align 4
  br label %27

237:                                              ; preds = %34
  store i32 0, i32* %6, align 4
  br label %238

238:                                              ; preds = %237, %175, %164, %126
  %239 = load i32, i32* %6, align 4
  ret i32 %239
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @BUGPRINT(i8*) #1

declare dso_local i8* @ebt_next_entry(%struct.ebt_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
