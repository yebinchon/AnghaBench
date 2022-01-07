; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-incpath.c_remove_duplicates.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-incpath.c_remove_duplicates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_dir = type { i64, i64, %struct.cpp_dir*, i32, i32, i64 }
%struct.stat = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@REASON_QUIET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@CPP_DL_WARNING = common dso_local global i32 0, align 4
@REASON_NOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: not a directory\00", align 1
@REASON_DUP_SYS = common dso_local global i32 0, align 4
@REASON_DUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpp_dir* (i32*, %struct.cpp_dir*, %struct.cpp_dir*, %struct.cpp_dir*, i32)* @remove_duplicates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpp_dir* @remove_duplicates(i32* %0, %struct.cpp_dir* %1, %struct.cpp_dir* %2, %struct.cpp_dir* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cpp_dir*, align 8
  %8 = alloca %struct.cpp_dir*, align 8
  %9 = alloca %struct.cpp_dir*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cpp_dir**, align 8
  %12 = alloca %struct.cpp_dir*, align 8
  %13 = alloca %struct.cpp_dir*, align 8
  %14 = alloca %struct.stat, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.cpp_dir* %1, %struct.cpp_dir** %7, align 8
  store %struct.cpp_dir* %2, %struct.cpp_dir** %8, align 8
  store %struct.cpp_dir* %3, %struct.cpp_dir** %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.cpp_dir** %7, %struct.cpp_dir*** %11, align 8
  br label %17

17:                                               ; preds = %218, %200, %5
  %18 = load %struct.cpp_dir**, %struct.cpp_dir*** %11, align 8
  %19 = load %struct.cpp_dir*, %struct.cpp_dir** %18, align 8
  %20 = icmp ne %struct.cpp_dir* %19, null
  br i1 %20, label %21, label %221

21:                                               ; preds = %17
  %22 = load i32, i32* @REASON_QUIET, align 4
  store i32 %22, i32* %15, align 4
  %23 = load %struct.cpp_dir**, %struct.cpp_dir*** %11, align 8
  %24 = load %struct.cpp_dir*, %struct.cpp_dir** %23, align 8
  store %struct.cpp_dir* %24, %struct.cpp_dir** %13, align 8
  %25 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %26 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @stat(i32 %27, %struct.stat* %14)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %21
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @ENOENT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @CPP_DL_ERROR, align 4
  %37 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %38 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cpp_errno(i32* %35, i32 %36, i32 %39)
  br label %62

41:                                               ; preds = %30
  %42 = load i32*, i32** %6, align 8
  %43 = call %struct.TYPE_3__* @cpp_get_options(i32* %42)
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %16, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %50 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @CPP_DL_WARNING, align 4
  %56 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %57 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cpp_errno(i32* %54, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %53, %48, %41
  %61 = load i32, i32* @REASON_NOENT, align 4
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %60, %34
  br label %206

63:                                               ; preds = %21
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @S_ISDIR(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* @CPP_DL_ERROR, align 4
  %71 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %72 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cpp_error_with_line(i32* %69, i32 %70, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %205

75:                                               ; preds = %63
  %76 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %77 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @INO_T_COPY(i32 %78, i32 %80)
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %85 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i32, i32* @REASON_DUP_SYS, align 4
  store i32 %86, i32* %15, align 4
  %87 = load %struct.cpp_dir*, %struct.cpp_dir** %8, align 8
  store %struct.cpp_dir* %87, %struct.cpp_dir** %12, align 8
  br label %88

88:                                               ; preds = %118, %75
  %89 = load %struct.cpp_dir*, %struct.cpp_dir** %12, align 8
  %90 = icmp ne %struct.cpp_dir* %89, null
  br i1 %90, label %91, label %122

91:                                               ; preds = %88
  %92 = load %struct.cpp_dir*, %struct.cpp_dir** %12, align 8
  %93 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %96 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @INO_T_EQ(i32 %94, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %91
  %101 = load %struct.cpp_dir*, %struct.cpp_dir** %12, align 8
  %102 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %105 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %100
  %109 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %110 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.cpp_dir*, %struct.cpp_dir** %12, align 8
  %113 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %122

117:                                              ; preds = %108, %100, %91
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.cpp_dir*, %struct.cpp_dir** %12, align 8
  %120 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %119, i32 0, i32 2
  %121 = load %struct.cpp_dir*, %struct.cpp_dir** %120, align 8
  store %struct.cpp_dir* %121, %struct.cpp_dir** %12, align 8
  br label %88

122:                                              ; preds = %116, %88
  %123 = load %struct.cpp_dir*, %struct.cpp_dir** %12, align 8
  %124 = icmp ne %struct.cpp_dir* %123, null
  br i1 %124, label %204, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* @REASON_DUP, align 4
  store i32 %126, i32* %15, align 4
  %127 = load %struct.cpp_dir*, %struct.cpp_dir** %7, align 8
  store %struct.cpp_dir* %127, %struct.cpp_dir** %12, align 8
  br label %128

128:                                              ; preds = %159, %125
  %129 = load %struct.cpp_dir*, %struct.cpp_dir** %12, align 8
  %130 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %131 = icmp ne %struct.cpp_dir* %129, %130
  br i1 %131, label %132, label %163

132:                                              ; preds = %128
  %133 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %134 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.cpp_dir*, %struct.cpp_dir** %12, align 8
  %137 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @INO_T_EQ(i32 %135, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %132
  %142 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %143 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.cpp_dir*, %struct.cpp_dir** %12, align 8
  %146 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %144, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %141
  %150 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %151 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.cpp_dir*, %struct.cpp_dir** %12, align 8
  %154 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %152, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %163

158:                                              ; preds = %149, %141, %132
  br label %159

159:                                              ; preds = %158
  %160 = load %struct.cpp_dir*, %struct.cpp_dir** %12, align 8
  %161 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %160, i32 0, i32 2
  %162 = load %struct.cpp_dir*, %struct.cpp_dir** %161, align 8
  store %struct.cpp_dir* %162, %struct.cpp_dir** %12, align 8
  br label %128

163:                                              ; preds = %157, %128
  %164 = load %struct.cpp_dir*, %struct.cpp_dir** %12, align 8
  %165 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %166 = icmp eq %struct.cpp_dir* %164, %165
  br i1 %166, label %167, label %203

167:                                              ; preds = %163
  %168 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %169 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %168, i32 0, i32 2
  %170 = load %struct.cpp_dir*, %struct.cpp_dir** %169, align 8
  %171 = icmp eq %struct.cpp_dir* %170, null
  br i1 %171, label %172, label %200

172:                                              ; preds = %167
  %173 = load %struct.cpp_dir*, %struct.cpp_dir** %9, align 8
  %174 = icmp ne %struct.cpp_dir* %173, null
  br i1 %174, label %175, label %200

175:                                              ; preds = %172
  %176 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %177 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.cpp_dir*, %struct.cpp_dir** %9, align 8
  %180 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @INO_T_EQ(i32 %178, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %200

184:                                              ; preds = %175
  %185 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %186 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.cpp_dir*, %struct.cpp_dir** %9, align 8
  %189 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %187, %190
  br i1 %191, label %192, label %200

192:                                              ; preds = %184
  %193 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %194 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.cpp_dir*, %struct.cpp_dir** %9, align 8
  %197 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %195, %198
  br i1 %199, label %203, label %200

200:                                              ; preds = %192, %184, %175, %172, %167
  %201 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %202 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %201, i32 0, i32 2
  store %struct.cpp_dir** %202, %struct.cpp_dir*** %11, align 8
  br label %17

203:                                              ; preds = %192, %163
  br label %204

204:                                              ; preds = %203, %122
  br label %205

205:                                              ; preds = %204, %68
  br label %206

206:                                              ; preds = %205, %62
  %207 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %208 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %207, i32 0, i32 2
  %209 = load %struct.cpp_dir*, %struct.cpp_dir** %208, align 8
  %210 = load %struct.cpp_dir**, %struct.cpp_dir*** %11, align 8
  store %struct.cpp_dir* %209, %struct.cpp_dir** %210, align 8
  %211 = load %struct.cpp_dir*, %struct.cpp_dir** %13, align 8
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %206
  %215 = load i32, i32* %15, align 4
  br label %218

216:                                              ; preds = %206
  %217 = load i32, i32* @REASON_QUIET, align 4
  br label %218

218:                                              ; preds = %216, %214
  %219 = phi i32 [ %215, %214 ], [ %217, %216 ]
  %220 = call i32 @free_path(%struct.cpp_dir* %211, i32 %219)
  br label %17

221:                                              ; preds = %17
  %222 = load %struct.cpp_dir*, %struct.cpp_dir** %9, align 8
  %223 = load %struct.cpp_dir**, %struct.cpp_dir*** %11, align 8
  store %struct.cpp_dir* %222, %struct.cpp_dir** %223, align 8
  %224 = load %struct.cpp_dir*, %struct.cpp_dir** %7, align 8
  ret %struct.cpp_dir* %224
}

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @cpp_errno(i32*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @cpp_get_options(i32*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @cpp_error_with_line(i32*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @INO_T_COPY(i32, i32) #1

declare dso_local i64 @INO_T_EQ(i32, i32) #1

declare dso_local i32 @free_path(%struct.cpp_dir*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
