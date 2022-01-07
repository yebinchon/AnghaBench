; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_fsi_analyze.c_fixup_required_disk_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_fsi_analyze.c_fixup_required_disk_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32, i32, %struct.TYPE_8__*, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i8*, i32 }

@DF_FSTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@DF_PASSNO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Pass number for %s:%s is non-zero\00", align 1
@DF_FREQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"dump frequency for %s:%s is non-zero\00", align 1
@DF_OPTS = common dso_local global i32 0, align 4
@DF_MOUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"%s: mount field specified for swap partition\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"pass number for %s:%s is non-zero\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"rw,defaults\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @fixup_required_disk_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_required_disk_info(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @DF_FSTYPE, align 4
  %9 = call i64 @ISSET(i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %228

11:                                               ; preds = %1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @STREQ(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %139

17:                                               ; preds = %11
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DF_PASSNO, align 4
  %22 = call i64 @ISSET(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DF_PASSNO, align 4
  %31 = call i32 @BITSET(i32 %29, i32 %30)
  br label %51

32:                                               ; preds = %17
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @lwarning(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %37, %32
  br label %51

51:                                               ; preds = %50, %24
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DF_FREQ, align 4
  %56 = call i64 @ISSET(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %51
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DF_FREQ, align 4
  %65 = call i32 @BITSET(i32 %63, i32 %64)
  br label %85

66:                                               ; preds = %51
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @lwarning(i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %71, %66
  br label %85

85:                                               ; preds = %84, %58
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @DF_OPTS, align 4
  %90 = call i64 @ISSET(i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %85
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %94 = load i32, i32* @DF_OPTS, align 4
  %95 = call i32 @xstrdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %96 = call i32 @set_disk_fs(%struct.TYPE_11__* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %85
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @DF_MOUNT, align 4
  %102 = call i64 @ISSET(i32 %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %128, label %104

104:                                              ; preds = %97
  %105 = call i8* (...) @new_que()
  %106 = bitcast i8* %105 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %106, %struct.TYPE_9__** %3, align 8
  %107 = call %struct.TYPE_10__* (...) @new_mount()
  store %struct.TYPE_10__* %107, %struct.TYPE_10__** %4, align 8
  %108 = call i32 @xstrdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = call i8* (...) @new_que()
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ins_que(i32* %115, i32 %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 7
  store %struct.TYPE_9__* %120, %struct.TYPE_9__** %122, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @DF_MOUNT, align 4
  %127 = call i32 @BITSET(i32 %125, i32 %126)
  br label %138

128:                                              ; preds = %97
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @lerror(i32 %131, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %128, %104
  br label %227

139:                                              ; preds = %11
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @STREQ(i32 %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %226

145:                                              ; preds = %139
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @DF_PASSNO, align 4
  %150 = call i64 @ISSET(i32 %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %145
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  store i64 0, i64* %154, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @DF_PASSNO, align 4
  %159 = call i32 @BITSET(i32 %157, i32 %158)
  br label %179

160:                                              ; preds = %145
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %160
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @lwarning(i32 %168, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %173, i32 %176)
  br label %178

178:                                              ; preds = %165, %160
  br label %179

179:                                              ; preds = %178, %152
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @DF_FREQ, align 4
  %184 = call i64 @ISSET(i32 %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %179
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  store i64 0, i64* %188, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @DF_FREQ, align 4
  %193 = call i32 @BITSET(i32 %191, i32 %192)
  br label %213

194:                                              ; preds = %179
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %212

199:                                              ; preds = %194
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 4
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @lwarning(i32 %202, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %207, i32 %210)
  br label %212

212:                                              ; preds = %199, %194
  br label %213

213:                                              ; preds = %212, %186
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @DF_OPTS, align 4
  %218 = call i64 @ISSET(i32 %216, i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %225, label %220

220:                                              ; preds = %213
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %222 = load i32, i32* @DF_OPTS, align 4
  %223 = call i32 @xstrdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %224 = call i32 @set_disk_fs(%struct.TYPE_11__* %221, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %220, %213
  br label %226

226:                                              ; preds = %225, %139
  br label %227

227:                                              ; preds = %226, %138
  br label %228

228:                                              ; preds = %227, %1
  ret void
}

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i64 @STREQ(i32, i8*) #1

declare dso_local i32 @BITSET(i32, i32) #1

declare dso_local i32 @lwarning(i32, i8*, i32, i32) #1

declare dso_local i32 @set_disk_fs(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i8* @new_que(...) #1

declare dso_local %struct.TYPE_10__* @new_mount(...) #1

declare dso_local i32 @ins_que(i32*, i32) #1

declare dso_local i32 @lerror(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
