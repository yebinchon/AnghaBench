; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_vlclient.c_afs_deliver_vl_get_entry_by_xxx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_vlclient.c_afs_deliver_vl_get_entry_by_xxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i64, i64, i32*, %struct.afs_cache_vlocation* }
%struct.afs_cache_vlocation = type { i32, i8**, i32*, %struct.TYPE_2__*, i8*, i8** }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c",,%u\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@AFS_VLSF_RWVOL = common dso_local global i32 0, align 4
@AFS_VOL_VTM_RW = common dso_local global i32 0, align 4
@AFS_VLSF_ROVOL = common dso_local global i32 0, align 4
@AFS_VOL_VTM_RO = common dso_local global i32 0, align 4
@AFS_VLSF_BACKVOL = common dso_local global i32 0, align 4
@AFS_VOL_VTM_BAK = common dso_local global i32 0, align 4
@AFS_VLF_RWEXISTS = common dso_local global i32 0, align 4
@AFS_VLF_ROEXISTS = common dso_local global i32 0, align 4
@AFS_VLF_BACKEXISTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" = 0 [done]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*, %struct.sk_buff*, i32)* @afs_deliver_vl_get_entry_by_xxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_vl_get_entry_by_xxx(%struct.afs_call* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_call*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_cache_vlocation*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i32 @afs_transfer_reply(%struct.afs_call* %14, %struct.sk_buff* %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %231

20:                                               ; preds = %3
  %21 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %22 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %25 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EBADMSG, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %231

31:                                               ; preds = %20
  %32 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %33 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %32, i32 0, i32 3
  %34 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %33, align 8
  store %struct.afs_cache_vlocation* %34, %struct.afs_cache_vlocation** %8, align 8
  %35 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %36 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %9, align 8
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %52, %31
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 64
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %9, align 8
  %44 = load i32, i32* %42, align 4
  %45 = call i8* @ntohl(i32 %44)
  %46 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %8, align 8
  %47 = getelementptr inbounds %struct.afs_cache_vlocation, %struct.afs_cache_vlocation* %46, i32 0, i32 5
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %45, i8** %51, align 8
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %8, align 8
  %57 = getelementptr inbounds %struct.afs_cache_vlocation, %struct.afs_cache_vlocation* %56, i32 0, i32 5
  %58 = load i8**, i8*** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  store i8* null, i8** %61, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %9, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %9, align 8
  %68 = load i32, i32* %66, align 4
  %69 = call i8* @ntohl(i32 %68)
  %70 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %8, align 8
  %71 = getelementptr inbounds %struct.afs_cache_vlocation, %struct.afs_cache_vlocation* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %86, %55
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 8
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %9, align 8
  %78 = load i32, i32* %76, align 4
  %79 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %8, align 8
  %80 = getelementptr inbounds %struct.afs_cache_vlocation, %struct.afs_cache_vlocation* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 4
  br label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %72

89:                                               ; preds = %72
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 8
  store i32* %91, i32** %9, align 8
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %152, %89
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 8
  br i1 %94, label %95, label %155

95:                                               ; preds = %92
  %96 = load i32*, i32** %9, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %9, align 8
  %98 = load i32, i32* %96, align 4
  %99 = call i8* @ntohl(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %10, align 4
  %101 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %8, align 8
  %102 = getelementptr inbounds %struct.afs_cache_vlocation, %struct.afs_cache_vlocation* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 0, i32* %106, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @AFS_VLSF_RWVOL, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %95
  %112 = load i32, i32* @AFS_VOL_VTM_RW, align 4
  %113 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %8, align 8
  %114 = getelementptr inbounds %struct.afs_cache_vlocation, %struct.afs_cache_vlocation* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %112
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %111, %95
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @AFS_VLSF_ROVOL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load i32, i32* @AFS_VOL_VTM_RO, align 4
  %128 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %8, align 8
  %129 = getelementptr inbounds %struct.afs_cache_vlocation, %struct.afs_cache_vlocation* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %127
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %126, %121
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @AFS_VLSF_BACKVOL, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load i32, i32* @AFS_VOL_VTM_BAK, align 4
  %143 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %8, align 8
  %144 = getelementptr inbounds %struct.afs_cache_vlocation, %struct.afs_cache_vlocation* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %142
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %141, %136
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %92

155:                                              ; preds = %92
  %156 = load i32*, i32** %9, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %9, align 8
  %158 = load i32, i32* %156, align 4
  %159 = call i8* @ntohl(i32 %158)
  %160 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %8, align 8
  %161 = getelementptr inbounds %struct.afs_cache_vlocation, %struct.afs_cache_vlocation* %160, i32 0, i32 1
  %162 = load i8**, i8*** %161, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 0
  store i8* %159, i8** %163, align 8
  %164 = load i32*, i32** %9, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %9, align 8
  %166 = load i32, i32* %164, align 4
  %167 = call i8* @ntohl(i32 %166)
  %168 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %8, align 8
  %169 = getelementptr inbounds %struct.afs_cache_vlocation, %struct.afs_cache_vlocation* %168, i32 0, i32 1
  %170 = load i8**, i8*** %169, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 1
  store i8* %167, i8** %171, align 8
  %172 = load i32*, i32** %9, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %9, align 8
  %174 = load i32, i32* %172, align 4
  %175 = call i8* @ntohl(i32 %174)
  %176 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %8, align 8
  %177 = getelementptr inbounds %struct.afs_cache_vlocation, %struct.afs_cache_vlocation* %176, i32 0, i32 1
  %178 = load i8**, i8*** %177, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 2
  store i8* %175, i8** %179, align 8
  %180 = load i32*, i32** %9, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %9, align 8
  %182 = load i32*, i32** %9, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %9, align 8
  %184 = load i32, i32* %182, align 4
  %185 = call i8* @ntohl(i32 %184)
  %186 = ptrtoint i8* %185 to i32
  store i32 %186, i32* %10, align 4
  %187 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %8, align 8
  %188 = getelementptr inbounds %struct.afs_cache_vlocation, %struct.afs_cache_vlocation* %187, i32 0, i32 0
  store i32 0, i32* %188, align 8
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @AFS_VLF_RWEXISTS, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %155
  %194 = load i32, i32* @AFS_VOL_VTM_RW, align 4
  %195 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %8, align 8
  %196 = getelementptr inbounds %struct.afs_cache_vlocation, %struct.afs_cache_vlocation* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %193, %155
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* @AFS_VLF_ROEXISTS, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load i32, i32* @AFS_VOL_VTM_RO, align 4
  %206 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %8, align 8
  %207 = getelementptr inbounds %struct.afs_cache_vlocation, %struct.afs_cache_vlocation* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %204, %199
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* @AFS_VLF_BACKEXISTS, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %210
  %216 = load i32, i32* @AFS_VOL_VTM_BAK, align 4
  %217 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %8, align 8
  %218 = getelementptr inbounds %struct.afs_cache_vlocation, %struct.afs_cache_vlocation* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %215, %210
  %222 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %8, align 8
  %223 = getelementptr inbounds %struct.afs_cache_vlocation, %struct.afs_cache_vlocation* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %221
  %227 = load i32, i32* @EBADMSG, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %4, align 4
  br label %231

229:                                              ; preds = %221
  %230 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %231

231:                                              ; preds = %229, %226, %28, %19
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @afs_transfer_reply(%struct.afs_call*, %struct.sk_buff*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
