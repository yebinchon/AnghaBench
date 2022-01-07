; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdebug.c_dump_mle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdebug.c_dump_mle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_master_list_entry = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DLM_MLE_BLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"BLK\00", align 1
@DLM_MLE_MASTER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"MAS\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MIG\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\09%3s\09mas=%3u\09new=%3u\09evt=%1d\09use=%1d\09ref=%3d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Maybe=\00", align 1
@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Vote=\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Response=\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Node=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_master_list_entry*, i8*, i32)* @dump_mle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_mle(%struct.dlm_master_list_entry* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_master_list_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.dlm_master_list_entry* %0, %struct.dlm_master_list_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %10 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DLM_MLE_BLOCK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %24

15:                                               ; preds = %3
  %16 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %17 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DLM_MLE_MASTER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %23

22:                                               ; preds = %15
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %23

23:                                               ; preds = %22, %21
  br label %24

24:                                               ; preds = %23, %14
  %25 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %26 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %29 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  %38 = call i64 @stringify_lockname(i32 %27, i32 %30, i8* %34, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %52 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %55 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %58 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %57, i32 0, i32 9
  %59 = call i32 @list_empty(i32* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %64 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %71 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @atomic_read(i32* %72)
  %74 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %46, i32 %49, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %50, i32 %53, i32 %56, i32 %62, i32 %69, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %7, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %83, %84
  %86 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %82, i32 %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %7, align 4
  %91 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %92 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @O2NM_MAX_NODES, align 4
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = sub nsw i32 %99, %100
  %102 = call i64 @stringify_nodemap(i32 %93, i32 %94, i8* %98, i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %7, align 4
  %107 = load i8*, i8** %5, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %111, %112
  %114 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %110, i32 %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %7, align 4
  %119 = load i8*, i8** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = sub nsw i32 %123, %124
  %126 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %122, i32 %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %7, align 4
  %131 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %132 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @O2NM_MAX_NODES, align 4
  %135 = load i8*, i8** %5, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %7, align 4
  %141 = sub nsw i32 %139, %140
  %142 = call i64 @stringify_nodemap(i32 %133, i32 %134, i8* %138, i32 %141)
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %7, align 4
  %147 = load i8*, i8** %5, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %7, align 4
  %153 = sub nsw i32 %151, %152
  %154 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %150, i32 %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %7, align 4
  %159 = load i8*, i8** %5, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %7, align 4
  %165 = sub nsw i32 %163, %164
  %166 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %162, i32 %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, %166
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %7, align 4
  %171 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %172 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @O2NM_MAX_NODES, align 4
  %175 = load i8*, i8** %5, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %7, align 4
  %181 = sub nsw i32 %179, %180
  %182 = call i64 @stringify_nodemap(i32 %173, i32 %174, i8* %178, i32 %181)
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %7, align 4
  %187 = load i8*, i8** %5, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %7, align 4
  %193 = sub nsw i32 %191, %192
  %194 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %190, i32 %193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %194
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %7, align 4
  %199 = load i8*, i8** %5, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %7, align 4
  %205 = sub nsw i32 %203, %204
  %206 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %202, i32 %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %208, %206
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %7, align 4
  %211 = load %struct.dlm_master_list_entry*, %struct.dlm_master_list_entry** %4, align 8
  %212 = getelementptr inbounds %struct.dlm_master_list_entry, %struct.dlm_master_list_entry* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @O2NM_MAX_NODES, align 4
  %215 = load i8*, i8** %5, align 8
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* %7, align 4
  %221 = sub nsw i32 %219, %220
  %222 = call i64 @stringify_nodemap(i32 %213, i32 %214, i8* %218, i32 %221)
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %224, %222
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %7, align 4
  %227 = load i8*, i8** %5, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* %7, align 4
  %233 = sub nsw i32 %231, %232
  %234 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %230, i32 %233, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %236, %234
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %7, align 4
  %239 = load i8*, i8** %5, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* %7, align 4
  %245 = sub nsw i32 %243, %244
  %246 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %242, i32 %245, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %247 = load i32, i32* %7, align 4
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %248, %246
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %7, align 4
  %251 = load i32, i32* %7, align 4
  ret i32 %251
}

declare dso_local i64 @stringify_lockname(i32, i32, i8*, i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @stringify_nodemap(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
