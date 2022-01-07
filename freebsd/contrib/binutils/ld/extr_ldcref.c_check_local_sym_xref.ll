; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldcref.c_check_local_sym_xref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldcref.c_check_local_sym_xref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lang_nocrossrefs = type { %struct.lang_nocrossref*, %struct.lang_nocrossrefs* }
%struct.lang_nocrossref = type { i32, %struct.lang_nocrossref* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_17__**, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i8*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }

@.str = private unnamed_addr constant [34 x i8] c"%B%F: could not read symbols; %E\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%B%F: could not read symbols: %E\0A\00", align 1
@BSF_GLOBAL = common dso_local global i32 0, align 4
@BSF_WARNING = common dso_local global i32 0, align 4
@BSF_INDIRECT = common dso_local global i32 0, align 4
@BSF_FILE = common dso_local global i32 0, align 4
@BSF_LOCAL = common dso_local global i32 0, align 4
@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@nocrossref_list = common dso_local global %struct.lang_nocrossrefs* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @check_local_sym_xref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_local_sym_xref(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_17__**, align 8
  %6 = alloca %struct.TYPE_17__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.lang_nocrossrefs*, align 8
  %13 = alloca %struct.lang_nocrossref*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %3, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = icmp eq %struct.TYPE_16__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %172

20:                                               ; preds = %1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %4, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = icmp ne %struct.TYPE_15__* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %28, align 8
  %30 = icmp ne %struct.TYPE_17__** %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %33, align 8
  store %struct.TYPE_17__** %34, %struct.TYPE_17__*** %5, align 8
  br label %67

35:                                               ; preds = %26, %20
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = call i64 @bfd_get_symtab_upper_bound(%struct.TYPE_16__* %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = call i32 @einfo(i32 %41, %struct.TYPE_16__* %42)
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i64, i64* %7, align 8
  %46 = call %struct.TYPE_17__** @xmalloc(i64 %45)
  store %struct.TYPE_17__** %46, %struct.TYPE_17__*** %5, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %49 = call i64 @bfd_canonicalize_symtab(%struct.TYPE_16__* %47, %struct.TYPE_17__** %48)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = call i32 @einfo(i32 %53, %struct.TYPE_16__* %54)
  br label %56

56:                                               ; preds = %52, %44
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = icmp ne %struct.TYPE_15__* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  store %struct.TYPE_17__** %60, %struct.TYPE_17__*** %62, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %59, %56
  br label %67

67:                                               ; preds = %66, %31
  %68 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  store %struct.TYPE_17__** %68, %struct.TYPE_17__*** %6, align 8
  br label %69

69:                                               ; preds = %163, %67
  %70 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = icmp ne %struct.TYPE_17__* %71, null
  br i1 %72, label %73, label %166

73:                                               ; preds = %69
  %74 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  store %struct.TYPE_17__* %75, %struct.TYPE_17__** %9, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @BSF_GLOBAL, align 4
  %80 = load i32, i32* @BSF_WARNING, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @BSF_INDIRECT, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @BSF_FILE, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %78, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  br label %163

89:                                               ; preds = %73
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @BSF_LOCAL, align 4
  %94 = load i32, i32* @BSF_SECTION_SYM, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %162

98:                                               ; preds = %89
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = icmp ne %struct.TYPE_14__* %103, null
  br i1 %104, label %105, label %162

105:                                              ; preds = %98
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @BSF_SECTION_SYM, align 4
  %117 = and i32 %115, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %105
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  store i8* %122, i8** %11, align 8
  br label %123

123:                                              ; preds = %119, %105
  %124 = load %struct.lang_nocrossrefs*, %struct.lang_nocrossrefs** @nocrossref_list, align 8
  store %struct.lang_nocrossrefs* %124, %struct.lang_nocrossrefs** %12, align 8
  br label %125

125:                                              ; preds = %157, %123
  %126 = load %struct.lang_nocrossrefs*, %struct.lang_nocrossrefs** %12, align 8
  %127 = icmp ne %struct.lang_nocrossrefs* %126, null
  br i1 %127, label %128, label %161

128:                                              ; preds = %125
  %129 = load %struct.lang_nocrossrefs*, %struct.lang_nocrossrefs** %12, align 8
  %130 = getelementptr inbounds %struct.lang_nocrossrefs, %struct.lang_nocrossrefs* %129, i32 0, i32 0
  %131 = load %struct.lang_nocrossref*, %struct.lang_nocrossref** %130, align 8
  store %struct.lang_nocrossref* %131, %struct.lang_nocrossref** %13, align 8
  br label %132

132:                                              ; preds = %152, %128
  %133 = load %struct.lang_nocrossref*, %struct.lang_nocrossref** %13, align 8
  %134 = icmp ne %struct.lang_nocrossref* %133, null
  br i1 %134, label %135, label %156

135:                                              ; preds = %132
  %136 = load %struct.lang_nocrossref*, %struct.lang_nocrossref** %13, align 8
  %137 = getelementptr inbounds %struct.lang_nocrossref, %struct.lang_nocrossref* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i8*, i8** %10, align 8
  %140 = call i64 @strcmp(i32 %138, i8* %139)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %135
  %143 = load i8*, i8** %11, align 8
  %144 = load i32, i32* @FALSE, align 4
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %149 = load %struct.lang_nocrossrefs*, %struct.lang_nocrossrefs** %12, align 8
  %150 = call i32 @check_refs(i8* %143, i32 %144, %struct.TYPE_18__* %147, %struct.TYPE_16__* %148, %struct.lang_nocrossrefs* %149)
  br label %151

151:                                              ; preds = %142, %135
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.lang_nocrossref*, %struct.lang_nocrossref** %13, align 8
  %154 = getelementptr inbounds %struct.lang_nocrossref, %struct.lang_nocrossref* %153, i32 0, i32 1
  %155 = load %struct.lang_nocrossref*, %struct.lang_nocrossref** %154, align 8
  store %struct.lang_nocrossref* %155, %struct.lang_nocrossref** %13, align 8
  br label %132

156:                                              ; preds = %132
  br label %157

157:                                              ; preds = %156
  %158 = load %struct.lang_nocrossrefs*, %struct.lang_nocrossrefs** %12, align 8
  %159 = getelementptr inbounds %struct.lang_nocrossrefs, %struct.lang_nocrossrefs* %158, i32 0, i32 1
  %160 = load %struct.lang_nocrossrefs*, %struct.lang_nocrossrefs** %159, align 8
  store %struct.lang_nocrossrefs* %160, %struct.lang_nocrossrefs** %12, align 8
  br label %125

161:                                              ; preds = %125
  br label %162

162:                                              ; preds = %161, %98, %89
  br label %163

163:                                              ; preds = %162, %88
  %164 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %164, i32 1
  store %struct.TYPE_17__** %165, %struct.TYPE_17__*** %6, align 8
  br label %69

166:                                              ; preds = %69
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %168 = icmp eq %struct.TYPE_15__* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %5, align 8
  %171 = call i32 @free(%struct.TYPE_17__** %170)
  br label %172

172:                                              ; preds = %19, %169, %166
  ret void
}

declare dso_local i64 @bfd_get_symtab_upper_bound(%struct.TYPE_16__*) #1

declare dso_local i32 @einfo(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_17__** @xmalloc(i64) #1

declare dso_local i64 @bfd_canonicalize_symtab(%struct.TYPE_16__*, %struct.TYPE_17__**) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @check_refs(i8*, i32, %struct.TYPE_18__*, %struct.TYPE_16__*, %struct.lang_nocrossrefs*) #1

declare dso_local i32 @free(%struct.TYPE_17__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
