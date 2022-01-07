; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_utils.c_xfs_dir_ialloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_utils.c_xfs_dir_ialloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, i32 }

@B_FALSE = common dso_local global i64 0, align 8
@XFS_TRANS_PERM_LOG_RES = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_TRANS_DQ_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir_ialloc(%struct.TYPE_13__** %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32** %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32** %7, i32*** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* null, i32** %23, align 8
  %30 = load i64, i64* @B_FALSE, align 8
  store i64 %30, i64* %24, align 8
  %31 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %20, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @xfs_ialloc(%struct.TYPE_13__* %39, i32* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32** %23, i64* %24, i32** %22)
  store i32 %46, i32* %25, align 4
  %47 = load i32, i32* %25, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %9
  %50 = load i32**, i32*** %18, align 8
  store i32* null, i32** %50, align 8
  %51 = load i32, i32* %25, align 4
  store i32 %51, i32* %10, align 4
  br label %197

52:                                               ; preds = %9
  %53 = load i64, i64* %24, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load i32*, i32** %22, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32**, i32*** %18, align 8
  store i32* null, i32** %59, align 8
  %60 = load i32, i32* @ENOSPC, align 4
  %61 = call i32 @XFS_ERROR(i32 %60)
  store i32 %61, i32* %10, align 4
  br label %197

62:                                               ; preds = %55, %52
  %63 = load i64, i64* %24, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %186

65:                                               ; preds = %62
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %67 = load i32*, i32** %23, align 8
  %68 = call i32 @xfs_trans_bhold(%struct.TYPE_13__* %66, i32* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %70 = call i32 @xfs_trans_get_log_res(%struct.TYPE_13__* %69)
  store i32 %70, i32* %26, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %72 = call i32 @xfs_trans_get_log_count(%struct.TYPE_13__* %71)
  store i32 %72, i32* %27, align 4
  store i8* null, i8** %28, align 8
  store i32 0, i32* %29, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %95

77:                                               ; preds = %65
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = bitcast i32* %80 to i8*
  store i8* %81, i8** %28, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  store i32* null, i32** %83, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @XFS_TRANS_DQ_DIRTY, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %29, align 4
  %89 = load i32, i32* @XFS_TRANS_DQ_DIRTY, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %77, %65
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %97 = call %struct.TYPE_13__* @xfs_trans_dup(%struct.TYPE_13__* %96)
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %21, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %99 = call i32 @xfs_trans_commit(%struct.TYPE_13__* %98, i32 0)
  store i32 %99, i32* %25, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %20, align 8
  %101 = load i32*, i32** %19, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32*, i32** %19, align 8
  store i32 1, i32* %104, align 4
  br label %105

105:                                              ; preds = %103, %95
  %106 = load i32, i32* %25, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %105
  %109 = load i32*, i32** %23, align 8
  %110 = call i32 @xfs_buf_relse(i32* %109)
  %111 = load i8*, i8** %28, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load i8*, i8** %28, align 8
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  store i32* %115, i32** %117, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %119 = call i32 @xfs_trans_free_dqinfo(%struct.TYPE_13__* %118)
  br label %120

120:                                              ; preds = %113, %108
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %122 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %122, align 8
  %123 = load i32**, i32*** %18, align 8
  store i32* null, i32** %123, align 8
  %124 = load i32, i32* %25, align 4
  store i32 %124, i32* %10, align 4
  br label %197

125:                                              ; preds = %105
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @xfs_log_ticket_put(i32 %128)
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %131 = load i32, i32* %26, align 4
  %132 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %133 = load i32, i32* %27, align 4
  %134 = call i32 @xfs_trans_reserve(%struct.TYPE_13__* %130, i32 0, i32 %131, i32 0, i32 %132, i32 %133)
  store i32 %134, i32* %25, align 4
  %135 = load i8*, i8** %28, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %147

137:                                              ; preds = %125
  %138 = load i8*, i8** %28, align 8
  %139 = bitcast i8* %138 to i32*
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  store i32* %139, i32** %141, align 8
  %142 = load i32, i32* %29, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %137, %125
  %148 = load i32, i32* %25, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load i32*, i32** %23, align 8
  %152 = call i32 @xfs_buf_relse(i32* %151)
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %154 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  store %struct.TYPE_13__* %153, %struct.TYPE_13__** %154, align 8
  %155 = load i32**, i32*** %18, align 8
  store i32* null, i32** %155, align 8
  %156 = load i32, i32* %25, align 4
  store i32 %156, i32* %10, align 4
  br label %197

157:                                              ; preds = %147
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %159 = load i32*, i32** %23, align 8
  %160 = call i32 @xfs_trans_bjoin(%struct.TYPE_13__* %158, i32* %159)
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %162 = load i32*, i32** %12, align 8
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %17, align 4
  %168 = call i32 @xfs_ialloc(%struct.TYPE_13__* %161, i32* %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32** %23, i64* %24, i32** %22)
  store i32 %168, i32* %25, align 4
  %169 = load i32, i32* %25, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %157
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %173 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  store %struct.TYPE_13__* %172, %struct.TYPE_13__** %173, align 8
  %174 = load i32**, i32*** %18, align 8
  store i32* null, i32** %174, align 8
  %175 = load i32, i32* %25, align 4
  store i32 %175, i32* %10, align 4
  br label %197

176:                                              ; preds = %157
  %177 = load i64, i64* %24, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %176
  %180 = load i32*, i32** %22, align 8
  %181 = icmp ne i32* %180, null
  br label %182

182:                                              ; preds = %179, %176
  %183 = phi i1 [ false, %176 ], [ %181, %179 ]
  %184 = zext i1 %183 to i32
  %185 = call i32 @ASSERT(i32 %184)
  br label %192

186:                                              ; preds = %62
  %187 = load i32*, i32** %19, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load i32*, i32** %19, align 8
  store i32 0, i32* %190, align 4
  br label %191

191:                                              ; preds = %189, %186
  br label %192

192:                                              ; preds = %191, %182
  %193 = load i32*, i32** %22, align 8
  %194 = load i32**, i32*** %18, align 8
  store i32* %193, i32** %194, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %196 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  store %struct.TYPE_13__* %195, %struct.TYPE_13__** %196, align 8
  store i32 0, i32* %10, align 4
  br label %197

197:                                              ; preds = %192, %171, %150, %120, %58, %49
  %198 = load i32, i32* %10, align 4
  ret i32 %198
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_ialloc(%struct.TYPE_13__*, i32*, i32, i32, i32, i32, i32, i32**, i64*, i32**) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_trans_bhold(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @xfs_trans_get_log_res(%struct.TYPE_13__*) #1

declare dso_local i32 @xfs_trans_get_log_count(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @xfs_trans_dup(%struct.TYPE_13__*) #1

declare dso_local i32 @xfs_trans_commit(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @xfs_buf_relse(i32*) #1

declare dso_local i32 @xfs_trans_free_dqinfo(%struct.TYPE_13__*) #1

declare dso_local i32 @xfs_log_ticket_put(i32) #1

declare dso_local i32 @xfs_trans_reserve(%struct.TYPE_13__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xfs_trans_bjoin(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
