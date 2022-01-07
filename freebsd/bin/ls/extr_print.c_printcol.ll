; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ls/extr_print.c_printcol.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ls/extr_print.c_printcol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__* }

@printcol.array = internal global %struct.TYPE_8__** null, align 8
@printcol.lastentries = internal global i32 -1, align 4
@f_notabs = common dso_local global i64 0, align 8
@NO_PRINT = common dso_local global i64 0, align 8
@f_inode = common dso_local global i64 0, align 8
@f_size = common dso_local global i64 0, align 8
@f_type = common dso_local global i64 0, align 8
@termwidth = common dso_local global i32 0, align 4
@FTS_ROOTLEVEL = common dso_local global i64 0, align 8
@f_longform = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"total %lu\0A\00", align 1
@blocksize = common dso_local global i32 0, align 4
@f_sortacross = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printcol(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %16 = load i64, i64* @f_notabs, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %15, align 4
  br label %20

19:                                               ; preds = %1
  store i32 8, i32* %15, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @printcol.lastentries, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @printcol.array, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = call %struct.TYPE_8__** @realloc(%struct.TYPE_8__** %27, i32 %33)
  store %struct.TYPE_8__** %34, %struct.TYPE_8__*** %4, align 8
  %35 = icmp eq %struct.TYPE_8__** %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = call i32 @warn(i32* null)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = call i32 @printscol(%struct.TYPE_9__* %38)
  br label %241

40:                                               ; preds = %26
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* @printcol.lastentries, align 4
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__** %44, %struct.TYPE_8__*** @printcol.array, align 8
  br label %45

45:                                               ; preds = %40, %20
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %66, %45
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = icmp ne %struct.TYPE_8__* %50, null
  br i1 %51, label %52, label %70

52:                                               ; preds = %49
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NO_PRINT, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @printcol.array, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %60, i64 %63
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %64, align 8
  br label %65

65:                                               ; preds = %58, %52
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %3, align 8
  br label %49

70:                                               ; preds = %49
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %9, align 4
  %74 = load i64, i64* @f_inode, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %76, %70
  %84 = load i64, i64* @f_size, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %86, %83
  %94 = load i64, i64* @f_type, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %15, align 4
  %104 = sub nsw i32 %103, 1
  %105 = xor i32 %104, -1
  %106 = and i32 %102, %105
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* @termwidth, align 4
  %108 = load i32, i32* %9, align 4
  %109 = mul nsw i32 2, %108
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %99
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %113 = call i32 @printscol(%struct.TYPE_9__* %112)
  br label %241

114:                                              ; preds = %99
  %115 = load i32, i32* @termwidth, align 4
  %116 = load i32, i32* %9, align 4
  %117 = sdiv i32 %115, %116
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = sdiv i32 %118, %119
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = srem i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %114
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %125, %114
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = icmp eq %struct.TYPE_8__* %131, null
  br i1 %132, label %141, label %133

133:                                              ; preds = %128
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 5
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @FTS_ROOTLEVEL, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %133, %128
  %142 = load i64, i64* @f_longform, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i64, i64* @f_size, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %144, %141
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @blocksize, align 4
  %152 = call i32 @howmany(i32 %150, i32 %151)
  %153 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %147, %144, %133
  store i32 0, i32* %5, align 4
  store i32 0, i32* %14, align 4
  br label %155

155:                                              ; preds = %238, %154
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %241

159:                                              ; preds = %155
  %160 = load i32, i32* %9, align 4
  store i32 %160, i32* %10, align 4
  %161 = load i64, i64* @f_sortacross, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %14, align 4
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %163, %159
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %166

166:                                              ; preds = %233, %165
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %236

170:                                              ; preds = %166
  %171 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @printcol.array, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %171, i64 %173
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @printaname(%struct.TYPE_8__* %175, i32 %178, i32 %181)
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %6, align 4
  %187 = load i64, i64* @f_sortacross, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %170
  %190 = load i32, i32* %5, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %5, align 4
  br label %196

192:                                              ; preds = %170
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* %5, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %192, %189
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* %11, align 4
  %199 = icmp sge i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  br label %236

201:                                              ; preds = %196
  br label %202

202:                                              ; preds = %221, %201
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %15, align 4
  %205 = add nsw i32 %203, %204
  %206 = load i32, i32* %15, align 4
  %207 = sub nsw i32 %206, 1
  %208 = xor i32 %207, -1
  %209 = and i32 %205, %208
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* %10, align 4
  %211 = icmp sle i32 %209, %210
  br i1 %211, label %212, label %229

212:                                              ; preds = %202
  %213 = load i64, i64* @f_sortacross, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %212
  %216 = load i32, i32* %8, align 4
  %217 = add nsw i32 %216, 1
  %218 = load i32, i32* %12, align 4
  %219 = icmp sge i32 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  br label %229

221:                                              ; preds = %215, %212
  %222 = load i64, i64* @f_notabs, align 8
  %223 = icmp ne i64 %222, 0
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i32 32, i32 9
  %226 = trunc i32 %225 to i8
  %227 = call i32 @putchar(i8 signext %226)
  %228 = load i32, i32* %7, align 4
  store i32 %228, i32* %6, align 4
  br label %202

229:                                              ; preds = %220, %202
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* %10, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %10, align 4
  br label %233

233:                                              ; preds = %229
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %8, align 4
  br label %166

236:                                              ; preds = %200, %166
  %237 = call i32 @putchar(i8 signext 10)
  br label %238

238:                                              ; preds = %236
  %239 = load i32, i32* %14, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %14, align 4
  br label %155

241:                                              ; preds = %36, %111, %155
  ret void
}

declare dso_local %struct.TYPE_8__** @realloc(%struct.TYPE_8__**, i32) #1

declare dso_local i32 @warn(i32*) #1

declare dso_local i32 @printscol(%struct.TYPE_9__*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i64 @printaname(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
