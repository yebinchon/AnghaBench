; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pid.c_dt_pid_per_mod.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pid.c_dt_pid_per_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i64, i32, i32, i64*, i32*, i32*, i32* }
%struct.TYPE_13__ = type { i32, i64, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"%s stret %llx %llx %llx %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@STB_LOCAL = common dso_local global i32 0, align 4
@STT_FUNC = common dso_local global i64 0, align 8
@D_PROC_FUNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to lookup '%s' in module '%s'\00", align 1
@SHN_UNDEF = common dso_local global i64 0, align 8
@DTRACE_FUNCNAMELEN = common dso_local global i32 0, align 4
@PR_SYMTAB = common dso_local global i32 0, align 4
@BIND_ANY = common dso_local global i32 0, align 4
@TYPE_FUNC = common dso_local global i32 0, align 4
@dt_pid_sym_filt = common dso_local global i32 0, align 4
@PR_DYNSYM = common dso_local global i32 0, align 4
@PR_MODEL_ILP32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_11__*, i8*)* @dt_pid_per_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_pid_per_mod(i8* %0, %struct.TYPE_11__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %8, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 9
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 8
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %11, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %211

28:                                               ; preds = %3
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @strrchr(i8* %29, i8 signext 47)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = icmp eq i8* %30, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %43

38:                                               ; preds = %28
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %40, align 8
  br label %43

43:                                               ; preds = %38, %34
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 6
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 6
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 6
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 6
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 3
  store i64 0, i64* %59, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 6
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 6
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 6
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 2
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 6
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 3
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @dt_dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %60, i32 %66, i32 %72, i32 %78, i32 %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strisglob(i8* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %171, label %91

91:                                               ; preds = %43
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @Pxlookup_by_name(i32 %94, i32 %97, i8* %98, i8* %101, %struct.TYPE_13__* %12, i32* null)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %139

104:                                              ; preds = %91
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 5
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* @STB_LOCAL, align 4
  %113 = load i64, i64* @STT_FUNC, align 8
  %114 = call i32 @GELF_ST_INFO(i32 %112, i64 %113)
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  store i32 %114, i32* %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 4
  store i64 0, i64* %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  store i64 0, i64* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  store i32 -1, i32* %118, align 8
  br label %138

119:                                              ; preds = %104
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strisglob(i8* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %119
  %126 = load i32*, i32** %9, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* @D_PROC_FUNC, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @dt_pid_error(i32* %126, i32* %127, i32* %128, i32* null, i32 %129, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %132, i8* %135)
  store i32 %136, i32* %4, align 4
  br label %211

137:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %211

138:                                              ; preds = %110
  br label %139

139:                                              ; preds = %138, %91
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @GELF_ST_TYPE(i32 %141)
  %143 = load i64, i64* @STT_FUNC, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %154, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @SHN_UNDEF, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150, %145, %139
  store i32 0, i32* %4, align 4
  br label %211

155:                                              ; preds = %150
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = load i32, i32* @DTRACE_FUNCNAMELEN, align 4
  %165 = call i32 @Plookup_by_addr(i32 %158, i64 %160, i8* %163, i32 %164, %struct.TYPE_13__* %12)
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @dt_pid_per_sym(%struct.TYPE_12__* %166, %struct.TYPE_13__* %12, i8* %169)
  store i32 %170, i32* %4, align 4
  br label %211

171:                                              ; preds = %43
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %13, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load i8*, i8** %7, align 8
  %179 = load i32, i32* @PR_SYMTAB, align 4
  %180 = load i32, i32* @BIND_ANY, align 4
  %181 = load i32, i32* @TYPE_FUNC, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @dt_pid_sym_filt, align 4
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %185 = call i32 @Psymbol_iter_by_addr(i32 %177, i8* %178, i32 %179, i32 %182, i32 %183, %struct.TYPE_12__* %184)
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %188

187:                                              ; preds = %171
  store i32 1, i32* %4, align 4
  br label %211

188:                                              ; preds = %171
  %189 = load i64, i64* %13, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %189, %192
  br i1 %193, label %194, label %209

194:                                              ; preds = %188
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = load i8*, i8** %7, align 8
  %199 = load i32, i32* @PR_DYNSYM, align 4
  %200 = load i32, i32* @BIND_ANY, align 4
  %201 = load i32, i32* @TYPE_FUNC, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @dt_pid_sym_filt, align 4
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %205 = call i32 @Psymbol_iter_by_addr(i32 %197, i8* %198, i32 %199, i32 %202, i32 %203, %struct.TYPE_12__* %204)
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %208

207:                                              ; preds = %194
  store i32 1, i32* %4, align 4
  br label %211

208:                                              ; preds = %194
  br label %209

209:                                              ; preds = %208, %188
  br label %210

210:                                              ; preds = %209
  store i32 0, i32* %4, align 4
  br label %211

211:                                              ; preds = %210, %207, %187, %155, %154, %137, %125, %27
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @dt_dprintf(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @strisglob(i8*) #1

declare dso_local i64 @Pxlookup_by_name(i32, i32, i8*, i8*, %struct.TYPE_13__*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @GELF_ST_INFO(i32, i64) #1

declare dso_local i32 @dt_pid_error(i32*, i32*, i32*, i32*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @GELF_ST_TYPE(i32) #1

declare dso_local i32 @Plookup_by_addr(i32, i64, i8*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @dt_pid_per_sym(%struct.TYPE_12__*, %struct.TYPE_13__*, i8*) #1

declare dso_local i32 @Psymbol_iter_by_addr(i32, i8*, i32, i32, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
