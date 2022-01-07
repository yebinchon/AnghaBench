; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lbmIODone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lbmIODone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32, %struct.lbuf* }
%struct.lbuf = type { i32, i32, i32, %struct.lbuf*, i64, %struct.jfs_log* }
%struct.jfs_log = type { %struct.lbuf*, i64 }

@.str = private unnamed_addr constant [29 x i8] c"lbmIODone: bp:0x%p flag:0x%x\00", align 1
@lbmDONE = common dso_local global i32 0, align 4
@BIO_UPTODATE = common dso_local global i32 0, align 4
@lbmERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"lbmIODone: I/O error in JFS log\00", align 1
@lbmREAD = common dso_local global i32 0, align 4
@lbmWRITE = common dso_local global i32 0, align 4
@lmStat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@L2LOGPSIZE = common dso_local global i32 0, align 4
@lbmDIRECT = common dso_local global i32 0, align 4
@lbmRELEASE = common dso_local global i32 0, align 4
@lbmSYNC = common dso_local global i32 0, align 4
@lbmGC = common dso_local global i32 0, align 4
@lbmFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @lbmIODone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbmIODone(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lbuf*, align 8
  %6 = alloca %struct.lbuf*, align 8
  %7 = alloca %struct.lbuf*, align 8
  %8 = alloca %struct.jfs_log*, align 8
  %9 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.bio*, %struct.bio** %3, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 1
  %12 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  store %struct.lbuf* %12, %struct.lbuf** %5, align 8
  %13 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %14 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %15 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @jfs_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.lbuf* %13, i32 %16)
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @LCACHE_LOCK(i64 %18)
  %20 = load i32, i32* @lbmDONE, align 4
  %21 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %22 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* @BIO_UPTODATE, align 4
  %26 = load %struct.bio*, %struct.bio** %3, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @lbmERROR, align 4
  %32 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %33 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = call i32 @jfs_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %30, %2
  %38 = load %struct.bio*, %struct.bio** %3, align 8
  %39 = call i32 @bio_put(%struct.bio* %38)
  %40 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %41 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @lbmREAD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %37
  %47 = load i32, i32* @lbmREAD, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %50 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @LCACHE_UNLOCK(i64 %53)
  %55 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %56 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %55, i32 0, i32 2
  %57 = call i32 @LCACHE_WAKEUP(i32* %56)
  br label %183

58:                                               ; preds = %37
  %59 = load i32, i32* @lbmWRITE, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %62 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lmStat, i32 0, i32 0), align 4
  %66 = call i32 @INCREMENT(i32 %65)
  %67 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %68 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %67, i32 0, i32 5
  %69 = load %struct.jfs_log*, %struct.jfs_log** %68, align 8
  store %struct.jfs_log* %69, %struct.jfs_log** %8, align 8
  %70 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %71 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @L2LOGPSIZE, align 4
  %74 = shl i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %77 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = load %struct.jfs_log*, %struct.jfs_log** %8, align 8
  %81 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %83 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @lbmDIRECT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %58
  %89 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %90 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %89, i32 0, i32 2
  %91 = call i32 @LCACHE_WAKEUP(i32* %90)
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @LCACHE_UNLOCK(i64 %92)
  br label %183

94:                                               ; preds = %58
  %95 = load %struct.jfs_log*, %struct.jfs_log** %8, align 8
  %96 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %95, i32 0, i32 0
  %97 = load %struct.lbuf*, %struct.lbuf** %96, align 8
  store %struct.lbuf* %97, %struct.lbuf** %7, align 8
  %98 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %99 = load %struct.lbuf*, %struct.lbuf** %7, align 8
  %100 = icmp eq %struct.lbuf* %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %94
  %102 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %103 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @lbmRELEASE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.jfs_log*, %struct.jfs_log** %8, align 8
  %110 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %109, i32 0, i32 0
  store %struct.lbuf* null, %struct.lbuf** %110, align 8
  %111 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %112 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %111, i32 0, i32 3
  store %struct.lbuf* null, %struct.lbuf** %112, align 8
  br label %113

113:                                              ; preds = %108, %101
  br label %140

114:                                              ; preds = %94
  %115 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %116 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @lbmRELEASE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %114
  %122 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %123 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %122, i32 0, i32 3
  %124 = load %struct.lbuf*, %struct.lbuf** %123, align 8
  %125 = load %struct.lbuf*, %struct.lbuf** %7, align 8
  %126 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %125, i32 0, i32 3
  store %struct.lbuf* %124, %struct.lbuf** %126, align 8
  store %struct.lbuf* %124, %struct.lbuf** %6, align 8
  %127 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %128 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %127, i32 0, i32 3
  store %struct.lbuf* null, %struct.lbuf** %128, align 8
  %129 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %130 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @lbmWRITE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %121
  %136 = load %struct.lbuf*, %struct.lbuf** %6, align 8
  %137 = call i32 @lbmRedrive(%struct.lbuf* %136)
  br label %138

138:                                              ; preds = %135, %121
  br label %139

139:                                              ; preds = %138, %114
  br label %140

140:                                              ; preds = %139, %113
  %141 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %142 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @lbmSYNC, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %140
  %148 = load i64, i64* %9, align 8
  %149 = call i32 @LCACHE_UNLOCK(i64 %148)
  %150 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %151 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %150, i32 0, i32 2
  %152 = call i32 @LCACHE_WAKEUP(i32* %151)
  br label %183

153:                                              ; preds = %140
  %154 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %155 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @lbmGC, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %153
  %161 = load i64, i64* %9, align 8
  %162 = call i32 @LCACHE_UNLOCK(i64 %161)
  %163 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %164 = call i32 @lmPostGC(%struct.lbuf* %163)
  br label %182

165:                                              ; preds = %153
  %166 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %167 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @lbmRELEASE, align 4
  %170 = and i32 %168, %169
  %171 = call i32 @assert(i32 %170)
  %172 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %173 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @lbmFREE, align 4
  %176 = and i32 %174, %175
  %177 = call i32 @assert(i32 %176)
  %178 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %179 = call i32 @lbmfree(%struct.lbuf* %178)
  %180 = load i64, i64* %9, align 8
  %181 = call i32 @LCACHE_UNLOCK(i64 %180)
  br label %182

182:                                              ; preds = %165, %160
  br label %183

183:                                              ; preds = %46, %88, %182, %147
  ret void
}

declare dso_local i32 @jfs_info(i8*, %struct.lbuf*, i32) #1

declare dso_local i32 @LCACHE_LOCK(i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @jfs_err(i8*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @LCACHE_UNLOCK(i64) #1

declare dso_local i32 @LCACHE_WAKEUP(i32*) #1

declare dso_local i32 @INCREMENT(i32) #1

declare dso_local i32 @lbmRedrive(%struct.lbuf*) #1

declare dso_local i32 @lmPostGC(%struct.lbuf*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lbmfree(%struct.lbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
