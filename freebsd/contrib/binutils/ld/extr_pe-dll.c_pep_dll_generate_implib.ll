; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pep_dll_generate_implib.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pep_dll_generate_implib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_22__*, i64 }
%struct.TYPE_22__ = type { i8*, i8*, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_20__* }

@dll_name = common dso_local global i64 0, align 8
@dll_filename = common dso_local global i64 0, align 8
@dll_symname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"%XCan't open .lib file: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Creating library file: %s\0A\00", align 1
@bfd_archive = common dso_local global i32 0, align 4
@pe_def_file = common dso_local global %struct.TYPE_21__* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"%Xbfd_set_archive_head: %E\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%Xbfd_close %s: %E\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pe_dll_generate_implib(%struct.TYPE_19__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %9, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  br label %23

21:                                               ; preds = %2
  %22 = load i64, i64* @dll_name, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i64 [ %20, %17 ], [ %22, %21 ]
  store i64 %24, i64* @dll_filename, align 8
  %25 = load i64, i64* @dll_filename, align 8
  %26 = call i8* @xstrdup(i64 %25)
  store i8* %26, i8** @dll_symname, align 8
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %48, %23
  %28 = load i8*, i8** @dll_symname, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = load i8*, i8** @dll_symname, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @ISALNUM(i8 signext %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = load i8*, i8** @dll_symname, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 95, i8* %46, align 1
  br label %47

47:                                               ; preds = %42, %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %27

51:                                               ; preds = %27
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @unlink_if_ordinary(i8* %52)
  %54 = load i8*, i8** %4, align 8
  %55 = call %struct.TYPE_20__* @bfd_openw(i8* %54, i32 0)
  store %struct.TYPE_20__* %55, %struct.TYPE_20__** %8, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %57 = icmp ne %struct.TYPE_20__* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 (i8*, ...) @einfo(i8* %59, i8* %60)
  br label %189

62:                                               ; preds = %51
  %63 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @info_msg(i8* %63, i8* %64)
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %67 = load i32, i32* @bfd_archive, align 4
  %68 = call i32 @bfd_set_format(%struct.TYPE_20__* %66, i32 %67)
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %72 = call %struct.TYPE_20__* @make_head(%struct.TYPE_20__* %71)
  store %struct.TYPE_20__* %72, %struct.TYPE_20__** %6, align 8
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %145, %62
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %148

79:                                               ; preds = %73
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %10, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** @pe_def_file, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %79
  br label %145

98:                                               ; preds = %79
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  store i8* %106, i8** %113, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i64 %118
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call %struct.TYPE_20__* @make_one(%struct.TYPE_22__* %119, %struct.TYPE_20__* %120, i32 %131)
  store %struct.TYPE_20__* %132, %struct.TYPE_20__** %11, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 1
  store %struct.TYPE_20__* %133, %struct.TYPE_20__** %135, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  store %struct.TYPE_20__* %136, %struct.TYPE_20__** %9, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 0
  store i8* %137, i8** %144, align 8
  br label %145

145:                                              ; preds = %98, %97
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %73

148:                                              ; preds = %73
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %150 = call %struct.TYPE_20__* @make_tail(%struct.TYPE_20__* %149)
  store %struct.TYPE_20__* %150, %struct.TYPE_20__** %7, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %152 = icmp eq %struct.TYPE_20__* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %155 = icmp eq %struct.TYPE_20__* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %153, %148
  br label %189

157:                                              ; preds = %153
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 1
  store %struct.TYPE_20__* %158, %struct.TYPE_20__** %160, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 1
  store %struct.TYPE_20__* %161, %struct.TYPE_20__** %163, align 8
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_20__* %164, %struct.TYPE_20__** %9, align 8
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %167 = call i32 @bfd_set_archive_head(%struct.TYPE_20__* %165, %struct.TYPE_20__* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %157
  %170 = call i32 (i8*, ...) @einfo(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %157
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %173 = call i32 @bfd_close(%struct.TYPE_20__* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %171
  %176 = load i8*, i8** %4, align 8
  %177 = call i32 (i8*, ...) @einfo(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %176)
  br label %178

178:                                              ; preds = %175, %171
  br label %179

179:                                              ; preds = %182, %178
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %181 = icmp ne %struct.TYPE_20__* %180, null
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %184, align 8
  store %struct.TYPE_20__* %185, %struct.TYPE_20__** %12, align 8
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %187 = call i32 @bfd_close(%struct.TYPE_20__* %186)
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %188, %struct.TYPE_20__** %9, align 8
  br label %179

189:                                              ; preds = %58, %156, %179
  ret void
}

declare dso_local i8* @xstrdup(i64) #1

declare dso_local i32 @ISALNUM(i8 signext) #1

declare dso_local i32 @unlink_if_ordinary(i8*) #1

declare dso_local %struct.TYPE_20__* @bfd_openw(i8*, i32) #1

declare dso_local i32 @einfo(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @info_msg(i8*, i8*) #1

declare dso_local i32 @bfd_set_format(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_20__* @make_head(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @make_one(%struct.TYPE_22__*, %struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_20__* @make_tail(%struct.TYPE_20__*) #1

declare dso_local i32 @bfd_set_archive_head(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @bfd_close(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
