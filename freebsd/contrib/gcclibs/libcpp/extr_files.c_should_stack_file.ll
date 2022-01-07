; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c_should_stack_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c_should_stack_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__*, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_21__*, i32, i32, i64)* }
%struct.TYPE_22__ = type { i32, i64, i64, i32, i64, %struct.TYPE_20__, i32, i32, i64, %struct.TYPE_22__*, i32, i64, %struct.TYPE_18__*, i64 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64 }

@NT_MACRO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_22__*, i32)* @should_stack_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_stack_file(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %227

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %22 = call i32 @_cpp_mark_file_once_only(%struct.TYPE_21__* %20, %struct.TYPE_22__* %21)
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 13
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %227

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %16
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 12
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = icmp ne %struct.TYPE_18__* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 12
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NT_MACRO, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %227

43:                                               ; preds = %34, %29
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 11
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %43
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_21__*, i32, i32, i64)*, i32 (%struct.TYPE_21__*, i32, i32, i64)** %51, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 %52(%struct.TYPE_21__* %53, i32 %56, i32 %59, i64 %62)
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @close(i32 %66)
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  store i32 -1, i32* %69, align 8
  store i32 0, i32* %4, align 4
  br label %227

70:                                               ; preds = %43
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %73 = call i64 @read_file(%struct.TYPE_21__* %71, %struct.TYPE_22__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %227

76:                                               ; preds = %70
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @check_file_against_entries(%struct.TYPE_21__* %77, %struct.TYPE_22__* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %88 = call i32 @_cpp_mark_file_once_only(%struct.TYPE_21__* %86, %struct.TYPE_22__* %87)
  br label %89

89:                                               ; preds = %85, %82
  store i32 0, i32* %4, align 4
  br label %227

90:                                               ; preds = %76
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  store i32 1, i32* %4, align 4
  br label %227

96:                                               ; preds = %90
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  store %struct.TYPE_22__* %99, %struct.TYPE_22__** %8, align 8
  br label %100

100:                                              ; preds = %219, %96
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %102 = icmp ne %struct.TYPE_22__* %101, null
  br i1 %102, label %103, label %223

103:                                              ; preds = %100
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %106 = icmp eq %struct.TYPE_22__* %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %219

108:                                              ; preds = %103
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 8
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %218

116:                                              ; preds = %111, %108
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %218

121:                                              ; preds = %116
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %125, %129
  br i1 %130, label %131, label %218

131:                                              ; preds = %121
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %135, %139
  br i1 %140, label %141, label %218

141:                                              ; preds = %131
  store i32 0, i32* %10, align 4
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %165

146:                                              ; preds = %141
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %165, label %151

151:                                              ; preds = %146
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = call %struct.TYPE_22__* @make_cpp_file(%struct.TYPE_21__* %152, i32 %155, i32 %158)
  store %struct.TYPE_22__* %159, %struct.TYPE_22__** %9, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  br label %167

165:                                              ; preds = %146, %141
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %166, %struct.TYPE_22__** %9, align 8
  br label %167

167:                                              ; preds = %165, %151
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %170 = call i64 @read_file(%struct.TYPE_21__* %168, %struct.TYPE_22__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %196

172:                                              ; preds = %167
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %176, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %172
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @memcmp(i64 %185, i64 %188, i64 %192)
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  br label %196

196:                                              ; preds = %182, %172, %167
  %197 = phi i1 [ false, %172 ], [ false, %167 ], [ %195, %182 ]
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %10, align 4
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %196
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 2
  store i64 0, i64* %210, align 8
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %212 = call i32 @destroy_cpp_file(%struct.TYPE_22__* %211)
  br label %213

213:                                              ; preds = %208, %203, %196
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  br label %223

217:                                              ; preds = %213
  br label %218

218:                                              ; preds = %217, %131, %121, %116, %111
  br label %219

219:                                              ; preds = %218, %107
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 9
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %221, align 8
  store %struct.TYPE_22__* %222, %struct.TYPE_22__** %8, align 8
  br label %100

223:                                              ; preds = %216, %100
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %225 = icmp eq %struct.TYPE_22__* %224, null
  %226 = zext i1 %225 to i32
  store i32 %226, i32* %4, align 4
  br label %227

227:                                              ; preds = %223, %95, %89, %75, %48, %42, %27, %15
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i32 @_cpp_mark_file_once_only(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @read_file(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i64 @check_file_against_entries(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_22__* @make_cpp_file(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @memcmp(i64, i64, i64) #1

declare dso_local i32 @destroy_cpp_file(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
