; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_journal.c_reserve_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_journal.c_reserve_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_wbuf }
%struct.ubifs_wbuf = type { i32, i32, i32, i32, i32, i32 }

@BASEHD = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"no free space in jhead %s, run GC\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"GC couldn't make a free LEB for jhead %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"retry (%d)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"return -ENOSPC\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"got LEB %d for jhead %s\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"return LEB %d back, already have LEB %d:%d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32)* @reserve_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve_space(%struct.ubifs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ubifs_wbuf*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.ubifs_wbuf* %22, %struct.ubifs_wbuf** %15, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @BASEHD, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %14, align 4
  br label %27

27:                                               ; preds = %112, %3
  %28 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %29 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %28, i32 0, i32 3
  %30 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %31 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mutex_lock_nested(i32* %29, i32 %32)
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @EROFS, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %189

41:                                               ; preds = %27
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %46 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  %49 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %50 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %11, align 4
  %53 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %54 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %62

57:                                               ; preds = %41
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %216

62:                                               ; preds = %57, %41
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @ubifs_find_free_space(%struct.ubifs_info* %63, i32 %64, i32* %13, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @ubifs_add_bud_to_log(%struct.ubifs_info* %70, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %194

78:                                               ; preds = %69
  br label %177

79:                                               ; preds = %62
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @ENOSPC, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %189

86:                                               ; preds = %79
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @dbg_jhead(i32 %87)
  %89 = call i32 (i8*, ...) @dbg_jnl(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %91 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %90, i32 0, i32 3
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %94 = call i32 @ubifs_garbage_collect(%struct.ubifs_info* %93, i32 0)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %86
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @ENOSPC, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %4, align 4
  br label %216

105:                                              ; preds = %97
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @dbg_jhead(i32 %106)
  %108 = call i32 (i8*, ...) @dbg_jnl(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  %111 = icmp slt i32 %109, 2
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load i32, i32* %10, align 4
  %114 = call i32 (i8*, ...) @dbg_jnl(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %27

115:                                              ; preds = %105
  %116 = call i32 (i8*, ...) @dbg_jnl(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %4, align 4
  br label %216

118:                                              ; preds = %86
  %119 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %120 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %119, i32 0, i32 3
  %121 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %122 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @mutex_lock_nested(i32* %120, i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @dbg_jhead(i32 %126)
  %128 = call i32 (i8*, ...) @dbg_jnl(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %125, i32 %127)
  %129 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %130 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %133 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %131, %134
  %136 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %137 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %135, %138
  store i32 %139, i32* %11, align 4
  %140 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %141 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, -1
  br i1 %143, label %144, label %168

144:                                              ; preds = %118
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %168

148:                                              ; preds = %144
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %151 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %154 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %157 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %155, %158
  %160 = call i32 (i8*, ...) @dbg_jnl(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %149, i32 %152, i32 %159)
  %161 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @ubifs_return_leb(%struct.ubifs_info* %161, i32 %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %148
  br label %189

167:                                              ; preds = %148
  store i32 0, i32* %4, align 4
  br label %216

168:                                              ; preds = %144, %118
  %169 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @ubifs_add_bud_to_log(%struct.ubifs_info* %169, i32 %170, i32 %171, i32 0)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  br label %194

176:                                              ; preds = %168
  store i32 0, i32* %13, align 4
  br label %177

177:                                              ; preds = %176, %78
  %178 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %13, align 4
  %181 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %182 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @ubifs_wbuf_seek_nolock(%struct.ubifs_wbuf* %178, i32 %179, i32 %180, i32 %183)
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %177
  br label %189

188:                                              ; preds = %177
  store i32 0, i32* %4, align 4
  br label %216

189:                                              ; preds = %187, %166, %85, %38
  %190 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %191 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %190, i32 0, i32 3
  %192 = call i32 @mutex_unlock(i32* %191)
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %4, align 4
  br label %216

194:                                              ; preds = %175, %77
  %195 = load i32, i32* %8, align 4
  %196 = icmp slt i32 %195, 0
  %197 = zext i1 %196 to i32
  %198 = call i32 @ubifs_assert(i32 %197)
  %199 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %200 = load i32, i32* %12, align 4
  %201 = call i32 @ubifs_return_leb(%struct.ubifs_info* %199, i32 %200)
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %194
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @EAGAIN, align 4
  %207 = sub nsw i32 0, %206
  %208 = icmp eq i32 %205, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = load i32, i32* %9, align 4
  store i32 %210, i32* %8, align 4
  br label %211

211:                                              ; preds = %209, %204, %194
  %212 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %15, align 8
  %213 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %212, i32 0, i32 3
  %214 = call i32 @mutex_unlock(i32* %213)
  %215 = load i32, i32* %8, align 4
  store i32 %215, i32* %4, align 4
  br label %216

216:                                              ; preds = %211, %189, %188, %167, %115, %103, %61
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @ubifs_find_free_space(%struct.ubifs_info*, i32, i32*, i32) #1

declare dso_local i32 @ubifs_add_bud_to_log(%struct.ubifs_info*, i32, i32, i32) #1

declare dso_local i32 @dbg_jnl(i8*, ...) #1

declare dso_local i32 @dbg_jhead(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_garbage_collect(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_return_leb(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_wbuf_seek_nolock(%struct.ubifs_wbuf*, i32, i32, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
