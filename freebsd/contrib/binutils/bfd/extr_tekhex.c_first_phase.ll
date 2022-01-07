; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_tekhex.c_first_phase.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_tekhex.c_first_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, i32, i8* }
%struct.TYPE_19__ = type { %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32, i8*, %struct.TYPE_20__*, i8*, %struct.TYPE_19__* }

@bfd_abs_section_ptr = common dso_local global %struct.TYPE_20__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@HAS_SYMS = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@BSF_EXPORT = common dso_local global i32 0, align 4
@BSF_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32, i8*)* @first_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @first_phase(%struct.TYPE_19__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [17 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i8, align 1
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** @bfd_abs_section_ptr, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %8, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %222 [
    i32 54, label %19
    i32 51, label %41
  ]

19:                                               ; preds = %3
  %20 = call i32 @getvalue(i8** %7, i8** %12)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %4, align 4
  br label %224

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %29, %24
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @HEX(i8* %31)
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @insert_byte(%struct.TYPE_19__* %30, i32 %32, i8* %33)
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %12, align 8
  br label %25

39:                                               ; preds = %25
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %4, align 4
  br label %224

41:                                               ; preds = %3
  %42 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %43 = call i32 @getsym(i8* %42, i8** %7, i32* %9)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %4, align 4
  br label %224

47:                                               ; preds = %41
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %49 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %50 = call %struct.TYPE_20__* @bfd_get_section_by_name(%struct.TYPE_19__* %48, i8* %49)
  store %struct.TYPE_20__* %50, %struct.TYPE_20__** %8, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %52 = icmp eq %struct.TYPE_20__* %51, null
  br i1 %52, label %53, label %71

53:                                               ; preds = %47
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i8* @bfd_alloc(%struct.TYPE_19__* %54, i32 %56)
  store i8* %57, i8** %13, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %4, align 4
  br label %224

62:                                               ; preds = %53
  %63 = load i8*, i8** %13, align 8
  %64 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %65 = load i32, i32* %9, align 4
  %66 = add i32 %65, 1
  %67 = call i32 @memcpy(i8* %63, i8* %64, i32 %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = call %struct.TYPE_20__* @bfd_make_section(%struct.TYPE_19__* %68, i8* %69)
  store %struct.TYPE_20__* %70, %struct.TYPE_20__** %8, align 8
  br label %71

71:                                               ; preds = %62, %47
  br label %72

72:                                               ; preds = %220, %71
  %73 = load i8*, i8** %7, align 8
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %221

76:                                               ; preds = %72
  %77 = load i8*, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  switch i32 %79, label %218 [
    i32 49, label %80
    i32 48, label %112
    i32 50, label %112
    i32 51, label %112
    i32 52, label %112
    i32 54, label %112
    i32 55, label %112
    i32 56, label %112
  ]

80:                                               ; preds = %76
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %7, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = call i32 @getvalue(i8** %7, i8** %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %4, align 4
  br label %224

89:                                               ; preds = %80
  %90 = call i32 @getvalue(i8** %7, i8** %10)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %4, align 4
  br label %224

94:                                               ; preds = %89
  %95 = load i8*, i8** %10, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = ptrtoint i8* %95 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %106 = load i32, i32* @SEC_LOAD, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @SEC_ALLOC, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  br label %220

112:                                              ; preds = %76, %76, %76, %76, %76, %76, %76
  store i32 48, i32* %14, align 4
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %114 = load i32, i32* %14, align 4
  %115 = call i8* @bfd_alloc(%struct.TYPE_19__* %113, i32 %114)
  %116 = bitcast i8* %115 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %116, %struct.TYPE_18__** %15, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load i8, i8* %117, align 1
  store i8 %118, i8* %16, align 1
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %120 = icmp ne %struct.TYPE_18__* %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %112
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %4, align 4
  br label %224

123:                                              ; preds = %112
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 4
  store %struct.TYPE_19__* %124, %struct.TYPE_19__** %127, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %7, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = load i32, i32* @HAS_SYMS, align 4
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %143, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  store %struct.TYPE_18__* %144, %struct.TYPE_18__** %146, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  store %struct.TYPE_18__* %147, %struct.TYPE_18__** %152, align 8
  %153 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %154 = call i32 @getsym(i8* %153, i8** %7, i32* %9)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %123
  %157 = load i32, i32* @FALSE, align 4
  store i32 %157, i32* %4, align 4
  br label %224

158:                                              ; preds = %123
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  %162 = call i8* @bfd_alloc(%struct.TYPE_19__* %159, i32 %161)
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 3
  store i8* %162, i8** %165, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %158
  %172 = load i32, i32* @FALSE, align 4
  store i32 %172, i32* %4, align 4
  br label %224

173:                                              ; preds = %158
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %179 = load i32, i32* %9, align 4
  %180 = add i32 %179, 1
  %181 = call i32 @memcpy(i8* %177, i8* %178, i32 %180)
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 2
  store %struct.TYPE_20__* %182, %struct.TYPE_20__** %185, align 8
  %186 = load i8, i8* %16, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp sle i32 %187, 52
  br i1 %188, label %189, label %196

189:                                              ; preds = %173
  %190 = load i32, i32* @BSF_GLOBAL, align 4
  %191 = load i32, i32* @BSF_EXPORT, align 4
  %192 = or i32 %190, %191
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  br label %201

196:                                              ; preds = %173
  %197 = load i32, i32* @BSF_LOCAL, align 4
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 8
  br label %201

201:                                              ; preds = %196, %189
  %202 = call i32 @getvalue(i8** %7, i8** %10)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %201
  %205 = load i32, i32* @FALSE, align 4
  store i32 %205, i32* %4, align 4
  br label %224

206:                                              ; preds = %201
  %207 = load i8*, i8** %10, align 8
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = ptrtoint i8* %207 to i64
  %212 = ptrtoint i8* %210 to i64
  %213 = sub i64 %211, %212
  %214 = inttoptr i64 %213 to i8*
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 1
  store i8* %214, i8** %217, align 8
  br label %220

218:                                              ; preds = %76
  %219 = load i32, i32* @FALSE, align 4
  store i32 %219, i32* %4, align 4
  br label %224

220:                                              ; preds = %206, %94
  br label %72

221:                                              ; preds = %72
  br label %222

222:                                              ; preds = %221, %3
  %223 = load i32, i32* @TRUE, align 4
  store i32 %223, i32* %4, align 4
  br label %224

224:                                              ; preds = %222, %218, %204, %171, %156, %121, %92, %87, %60, %45, %39, %22
  %225 = load i32, i32* %4, align 4
  ret i32 %225
}

declare dso_local i32 @getvalue(i8**, i8**) #1

declare dso_local i32 @insert_byte(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @HEX(i8*) #1

declare dso_local i32 @getsym(i8*, i8**, i32*) #1

declare dso_local %struct.TYPE_20__* @bfd_get_section_by_name(%struct.TYPE_19__*, i8*) #1

declare dso_local i8* @bfd_alloc(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_20__* @bfd_make_section(%struct.TYPE_19__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
