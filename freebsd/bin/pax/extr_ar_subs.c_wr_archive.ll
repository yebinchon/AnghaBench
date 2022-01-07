; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_subs.c_wr_archive.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_subs.c_wr_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64 (...)*, i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*, i32, i64*)*, i32 (...)* }
%struct.TYPE_18__ = type { i64, i64, i32, i32 }

@frmt = common dso_local global %struct.TYPE_17__* null, align 8
@iflag = common dso_local global i64 0, align 8
@uflag = common dso_local global i64 0, align 8
@PAX_REG = common dso_local global i64 0, align 8
@PAX_HRG = common dso_local global i64 0, align 8
@PAX_CTG = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unable to open %s to read\00", align 1
@docrc = common dso_local global i64 0, align 8
@vflag = common dso_local global i32 0, align 4
@listf = common dso_local global i32 0, align 4
@vfpart = common dso_local global i32 0, align 4
@flcnt = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@s_mask = common dso_local global i32 0, align 4
@tflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32)* @wr_archive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wr_archive(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32 (%struct.TYPE_18__*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %10, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** @frmt, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i64 (...) @lnk_start()
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %238

20:                                               ; preds = %16, %2
  %21 = call i64 (...) @ftree_start()
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** @frmt, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load i64 (...)*, i64 (...)** %25, align 8
  %27 = call i64 (...) %26()
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %20
  br label %238

30:                                               ; preds = %23
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** @frmt, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %32, align 8
  store i32 (%struct.TYPE_18__*)* %33, i32 (%struct.TYPE_18__*)** %9, align 8
  %34 = load i64, i64* @iflag, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = call i64 (...) @name_start()
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %238

40:                                               ; preds = %36, %30
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %7, align 4
  %42 = call i32 @time(i32* null)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %218, %175, %130, %101, %64, %51, %40
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = call i64 @next_file(%struct.TYPE_18__* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %219

47:                                               ; preds = %43
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = call i64 @sel_chk(%struct.TYPE_18__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 (...) @ftree_notsel()
  br label %43

53:                                               ; preds = %47
  store i32 -1, i32* %10, align 4
  %54 = load i64, i64* @uflag, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %58 = call i32 @chk_ftime(%struct.TYPE_18__* %57)
  store i32 %58, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %219

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %43

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65, %53
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %68 = call i32 @ftree_sel(%struct.TYPE_18__* %67)
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %73 = call i64 @chk_lnk(%struct.TYPE_18__* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %219

76:                                               ; preds = %71, %66
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PAX_REG, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %94, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PAX_HRG, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PAX_CTG, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %88, %82, %76
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @O_RDONLY, align 4
  %99 = call i32 @open(i32 %97, i32 %98, i32 0)
  store i32 %99, i32* %10, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %94
  %102 = load i32, i32* @errno, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @syswarn(i32 1, i32 %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %108 = call i32 @purg_lnk(%struct.TYPE_18__* %107)
  br label %43

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %109, %88
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %112 = call i32 @mod_name(%struct.TYPE_18__* %111)
  store i32 %112, i32* %5, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %116 = call i32 @rdfile_close(%struct.TYPE_18__* %115, i32* %10)
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %118 = call i32 @purg_lnk(%struct.TYPE_18__* %117)
  br label %219

119:                                              ; preds = %110
  %120 = load i32, i32* %5, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %119
  %123 = load i64, i64* @docrc, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i64 @set_crc(%struct.TYPE_18__* %126, i32 %127)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125, %119
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %132 = call i32 @rdfile_close(%struct.TYPE_18__* %131, i32* %10)
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %134 = call i32 @purg_lnk(%struct.TYPE_18__* %133)
  br label %43

135:                                              ; preds = %125, %122
  %136 = load i32, i32* @vflag, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %135
  %139 = load i32, i32* @vflag, align 4
  %140 = icmp sgt i32 %139, 1
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @listf, align 4
  %145 = call i32 @ls_list(%struct.TYPE_18__* %142, i32 %143, i32 %144)
  br label %152

146:                                              ; preds = %138
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @listf, align 4
  %151 = call i32 @fputs(i32 %149, i32 %150)
  store i32 1, i32* @vfpart, align 4
  br label %152

152:                                              ; preds = %146, %141
  br label %153

153:                                              ; preds = %152, %135
  %154 = load i32, i32* @flcnt, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* @flcnt, align 4
  %156 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %9, align 8
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %158 = call i32 %156(%struct.TYPE_18__* %157)
  store i32 %158, i32* %5, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %153
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %162 = call i32 @rdfile_close(%struct.TYPE_18__* %161, i32* %10)
  br label %219

163:                                              ; preds = %153
  store i32 1, i32* %7, align 4
  %164 = load i32, i32* %5, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %163
  %167 = load i32, i32* @vflag, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load i32, i32* @vfpart, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* @listf, align 4
  %174 = call i32 @putc(i8 signext 10, i32 %173)
  store i32 0, i32* @vfpart, align 4
  br label %175

175:                                              ; preds = %172, %169, %166
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %177 = call i32 @rdfile_close(%struct.TYPE_18__* %176, i32* %10)
  br label %43

178:                                              ; preds = %163
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** @frmt, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 3
  %181 = load i32 (%struct.TYPE_18__*, i32, i64*)*, i32 (%struct.TYPE_18__*, i32, i64*)** %180, align 8
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %183 = load i32, i32* %10, align 4
  %184 = call i32 %181(%struct.TYPE_18__* %182, i32 %183, i64* %8)
  store i32 %184, i32* %5, align 4
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %186 = call i32 @rdfile_close(%struct.TYPE_18__* %185, i32* %10)
  %187 = load i32, i32* @vflag, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %178
  %190 = load i32, i32* @vfpart, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32, i32* @listf, align 4
  %194 = call i32 @putc(i8 signext 10, i32 %193)
  store i32 0, i32* @vfpart, align 4
  br label %195

195:                                              ; preds = %192, %189, %178
  %196 = load i32, i32* %5, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  br label %219

199:                                              ; preds = %195
  %200 = load i64, i64* %8, align 8
  %201 = icmp sgt i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = load i64, i64* %8, align 8
  %204 = call i64 @wr_skip(i64 %203)
  %205 = icmp slt i64 %204, 0
  br i1 %205, label %217, label %206

206:                                              ; preds = %202, %199
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %206
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = call i64 @wr_skip(i64 %214)
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %211, %202
  br label %219

218:                                              ; preds = %211, %206
  br label %43

219:                                              ; preds = %217, %198, %160, %114, %75, %60, %43
  %220 = load i32, i32* %7, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %219
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** @frmt, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 4
  %225 = load i32 (...)*, i32 (...)** %224, align 8
  %226 = call i32 (...) %225()
  %227 = call i32 (...) @wr_fin()
  br label %228

228:                                              ; preds = %222, %219
  %229 = load i32, i32* @SIG_BLOCK, align 4
  %230 = call i32 @sigprocmask(i32 %229, i32* @s_mask, i32* null)
  %231 = call i32 (...) @ar_close()
  %232 = load i64, i64* @tflag, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %228
  %235 = call i32 (...) @proc_dir()
  br label %236

236:                                              ; preds = %234, %228
  %237 = call i32 (...) @ftree_chk()
  br label %238

238:                                              ; preds = %236, %39, %29, %19
  ret void
}

declare dso_local i64 @lnk_start(...) #1

declare dso_local i64 @ftree_start(...) #1

declare dso_local i64 @name_start(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @next_file(%struct.TYPE_18__*) #1

declare dso_local i64 @sel_chk(%struct.TYPE_18__*) #1

declare dso_local i32 @ftree_notsel(...) #1

declare dso_local i32 @chk_ftime(%struct.TYPE_18__*) #1

declare dso_local i32 @ftree_sel(%struct.TYPE_18__*) #1

declare dso_local i64 @chk_lnk(%struct.TYPE_18__*) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @syswarn(i32, i32, i8*, i32) #1

declare dso_local i32 @purg_lnk(%struct.TYPE_18__*) #1

declare dso_local i32 @mod_name(%struct.TYPE_18__*) #1

declare dso_local i32 @rdfile_close(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @set_crc(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ls_list(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i64 @wr_skip(i64) #1

declare dso_local i32 @wr_fin(...) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @ar_close(...) #1

declare dso_local i32 @proc_dir(...) #1

declare dso_local i32 @ftree_chk(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
