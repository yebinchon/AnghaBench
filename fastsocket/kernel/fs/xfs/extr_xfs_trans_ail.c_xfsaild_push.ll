; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_trans_ail.c_xfsaild_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_trans_ail.c_xfsaild_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ail = type { i64, i64, i32, i32, %struct.xfs_ail_cursor, %struct.TYPE_17__* }
%struct.xfs_ail_cursor = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i64 }

@xs_push_ail_flush = common dso_local global i32 0, align 4
@XFS_LOG_SYNC = common dso_local global i32 0, align 4
@xs_push_ail = common dso_local global i32 0, align 4
@xs_push_ail_success = common dso_local global i32 0, align 4
@xs_push_ail_pushbuf = common dso_local global i32 0, align 4
@xs_push_ail_pinned = common dso_local global i32 0, align 4
@xs_push_ail_locked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xfsaild_push(%struct.xfs_ail* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.xfs_ail*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.xfs_ail_cursor*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.xfs_ail* %0, %struct.xfs_ail** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 10, i64* %6, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %20, i32 0, i32 5
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %14, align 8
  %23 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %24 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %23, i32 0, i32 4
  store %struct.xfs_ail_cursor* %24, %struct.xfs_ail_cursor** %15, align 8
  store i32 0, i32* %16, align 4
  %25 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %25, i32 0, i32 2
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %2
  %31 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %32 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %37 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %36, i32 0, i32 3
  %38 = call i32 @list_empty(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %35
  %41 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %42 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %44 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %43, i32 0, i32 2
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load i32, i32* @xs_push_ail_flush, align 4
  %47 = call i32 @XFS_STATS_INC(i32 %46)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %49 = load i32, i32* @XFS_LOG_SYNC, align 4
  %50 = call i32 @xfs_log_force(%struct.TYPE_17__* %48, i32 %49)
  %51 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %52 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %51, i32 0, i32 2
  %53 = call i32 @spin_lock(i32* %52)
  br label %54

54:                                               ; preds = %40, %35, %30, %2
  %55 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %56 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %8, align 8
  %58 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %59 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %15, align 8
  %60 = call i32 @xfs_trans_ail_cursor_init(%struct.xfs_ail* %58, %struct.xfs_ail_cursor* %59)
  %61 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %62 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %15, align 8
  %63 = load i64*, i64** %5, align 8
  %64 = load i64, i64* %63, align 8
  %65 = call %struct.TYPE_18__* @xfs_trans_ail_cursor_first(%struct.xfs_ail* %61, %struct.xfs_ail_cursor* %62, i64 %64)
  store %struct.TYPE_18__* %65, %struct.TYPE_18__** %10, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %67 = icmp ne %struct.TYPE_18__* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %70 = call i64 @XFS_FORCED_SHUTDOWN(%struct.TYPE_17__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %68, %54
  %73 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %74 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %15, align 8
  %75 = call i32 @xfs_trans_ail_cursor_done(%struct.xfs_ail* %73, %struct.xfs_ail_cursor* %74)
  %76 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %77 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %76, i32 0, i32 2
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load i64*, i64** %5, align 8
  store i64 0, i64* %79, align 8
  store i64 50, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  store i64 %80, i64* %3, align 8
  br label %219

81:                                               ; preds = %68
  %82 = load i32, i32* @xs_push_ail, align 4
  %83 = call i32 @XFS_STATS_INC(i32 %82)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %174, %81
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i64 @XFS_LSN_CMP(i64 %90, i64 %91)
  %93 = icmp sle i64 %92, 0
  br i1 %93, label %94, label %178

94:                                               ; preds = %87
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %96 = call i32 @IOP_TRYLOCK(%struct.TYPE_18__* %95)
  store i32 %96, i32* %17, align 4
  %97 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %98 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %97, i32 0, i32 2
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load i32, i32* %17, align 4
  switch i32 %100, label %147 [
    i32 128, label %101
    i32 129, label %109
    i32 130, label %129
    i32 131, label %140
  ]

101:                                              ; preds = %94
  %102 = load i32, i32* @xs_push_ail_success, align 4
  %103 = call i32 @XFS_STATS_INC(i32 %102)
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %105 = call i32 @trace_xfs_ail_push(%struct.TYPE_18__* %104)
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %107 = call i32 @IOP_PUSH(%struct.TYPE_18__* %106)
  %108 = load i64, i64* %9, align 8
  store i64 %108, i64* %7, align 8
  br label %149

109:                                              ; preds = %94
  %110 = load i32, i32* @xs_push_ail_pushbuf, align 4
  %111 = call i32 @XFS_STATS_INC(i32 %110)
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %113 = call i32 @trace_xfs_ail_pushbuf(%struct.TYPE_18__* %112)
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %115 = call i32 @IOP_PUSHBUF(%struct.TYPE_18__* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %109
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %119 = call i32 @trace_xfs_ail_pushbuf_pinned(%struct.TYPE_18__* %118)
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  %122 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %123 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  br label %128

126:                                              ; preds = %109
  %127 = load i64, i64* %9, align 8
  store i64 %127, i64* %7, align 8
  br label %128

128:                                              ; preds = %126, %117
  store i32 1, i32* %16, align 4
  br label %149

129:                                              ; preds = %94
  %130 = load i32, i32* @xs_push_ail_pinned, align 4
  %131 = call i32 @XFS_STATS_INC(i32 %130)
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %133 = call i32 @trace_xfs_ail_pinned(%struct.TYPE_18__* %132)
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  %136 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %137 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %137, align 8
  br label %149

140:                                              ; preds = %94
  %141 = load i32, i32* @xs_push_ail_locked, align 4
  %142 = call i32 @XFS_STATS_INC(i32 %141)
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %144 = call i32 @trace_xfs_ail_locked(%struct.TYPE_18__* %143)
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  br label %149

147:                                              ; preds = %94
  %148 = call i32 @ASSERT(i32 0)
  br label %149

149:                                              ; preds = %147, %140, %129, %128, %101
  %150 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %151 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %150, i32 0, i32 2
  %152 = call i32 @spin_lock(i32* %151)
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %154 = call i64 @XFS_FORCED_SHUTDOWN(%struct.TYPE_17__* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %178

157:                                              ; preds = %149
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @ASSERT(i32 %160)
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp sgt i32 %164, 100
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  br label %178

167:                                              ; preds = %157
  %168 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %169 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %15, align 8
  %170 = call %struct.TYPE_18__* @xfs_trans_ail_cursor_next(%struct.xfs_ail* %168, %struct.xfs_ail_cursor* %169)
  store %struct.TYPE_18__* %170, %struct.TYPE_18__** %10, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %172 = icmp eq %struct.TYPE_18__* %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %178

174:                                              ; preds = %167
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %9, align 8
  br label %87

178:                                              ; preds = %173, %166, %156, %87
  %179 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %180 = load %struct.xfs_ail_cursor*, %struct.xfs_ail_cursor** %15, align 8
  %181 = call i32 @xfs_trans_ail_cursor_done(%struct.xfs_ail* %179, %struct.xfs_ail_cursor* %180)
  %182 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %183 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %182, i32 0, i32 2
  %184 = call i32 @spin_unlock(i32* %183)
  %185 = load i32, i32* %16, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %178
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @wake_up_process(i32 %192)
  br label %194

194:                                              ; preds = %187, %178
  %195 = load i32, i32* %12, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  store i64 0, i64* %7, align 8
  %198 = load %struct.xfs_ail*, %struct.xfs_ail** %4, align 8
  %199 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %198, i32 0, i32 1
  store i64 0, i64* %199, align 8
  store i64 50, i64* %6, align 8
  br label %215

200:                                              ; preds = %194
  %201 = load i64, i64* %9, align 8
  %202 = load i64, i64* %8, align 8
  %203 = call i64 @XFS_LSN_CMP(i64 %201, i64 %202)
  %204 = icmp sge i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  store i64 50, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %214

206:                                              ; preds = %200
  %207 = load i32, i32* %13, align 4
  %208 = mul nsw i32 %207, 100
  %209 = load i32, i32* %12, align 4
  %210 = sdiv i32 %208, %209
  %211 = icmp sgt i32 %210, 90
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  store i64 20, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %213

213:                                              ; preds = %212, %206
  br label %214

214:                                              ; preds = %213, %205
  br label %215

215:                                              ; preds = %214, %197
  %216 = load i64, i64* %7, align 8
  %217 = load i64*, i64** %5, align 8
  store i64 %216, i64* %217, align 8
  %218 = load i64, i64* %6, align 8
  store i64 %218, i64* %3, align 8
  br label %219

219:                                              ; preds = %215, %72
  %220 = load i64, i64* %3, align 8
  ret i64 %220
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @XFS_STATS_INC(i32) #1

declare dso_local i32 @xfs_log_force(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @xfs_trans_ail_cursor_init(%struct.xfs_ail*, %struct.xfs_ail_cursor*) #1

declare dso_local %struct.TYPE_18__* @xfs_trans_ail_cursor_first(%struct.xfs_ail*, %struct.xfs_ail_cursor*, i64) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.TYPE_17__*) #1

declare dso_local i32 @xfs_trans_ail_cursor_done(%struct.xfs_ail*, %struct.xfs_ail_cursor*) #1

declare dso_local i64 @XFS_LSN_CMP(i64, i64) #1

declare dso_local i32 @IOP_TRYLOCK(%struct.TYPE_18__*) #1

declare dso_local i32 @trace_xfs_ail_push(%struct.TYPE_18__*) #1

declare dso_local i32 @IOP_PUSH(%struct.TYPE_18__*) #1

declare dso_local i32 @trace_xfs_ail_pushbuf(%struct.TYPE_18__*) #1

declare dso_local i32 @IOP_PUSHBUF(%struct.TYPE_18__*) #1

declare dso_local i32 @trace_xfs_ail_pushbuf_pinned(%struct.TYPE_18__*) #1

declare dso_local i32 @trace_xfs_ail_pinned(%struct.TYPE_18__*) #1

declare dso_local i32 @trace_xfs_ail_locked(%struct.TYPE_18__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_18__* @xfs_trans_ail_cursor_next(%struct.xfs_ail*, %struct.xfs_ail_cursor*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
