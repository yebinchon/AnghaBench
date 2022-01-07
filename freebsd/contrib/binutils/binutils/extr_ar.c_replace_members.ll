; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_replace_members.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_replace_members.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_10__*, i32* }
%struct.stat = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@newer_only = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"internal stat error on %s\00", align 1
@pos_after = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@pos_end = common dso_local global i32 0, align 4
@output_filename = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8**, i64)* @replace_members to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace_members(%struct.TYPE_10__* %0, i8** %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__**, align 8
  %11 = alloca %struct.stat, align 8
  %12 = alloca %struct.stat, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %127, %3
  %15 = load i8**, i8*** %5, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %130

23:                                               ; preds = %21
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %113, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store %struct.TYPE_10__** %28, %struct.TYPE_10__*** %10, align 8
  br label %29

29:                                               ; preds = %109, %26
  %30 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %33, label %112

33:                                               ; preds = %29
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %9, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = call i32 @normalize(i8* %37, %struct.TYPE_10__* %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = call i32 @normalize(i8* %42, %struct.TYPE_10__* %43)
  %45 = call i64 @FILENAME_CMP(i32 %39, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %109

47:                                               ; preds = %33
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %109

52:                                               ; preds = %47
  %53 = load i64, i64* @newer_only, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %52
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @stat(i8* %57, %struct.stat* %11)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @ENOENT, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i8**, i8*** %5, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @bfd_fatal(i8* %66)
  br label %68

68:                                               ; preds = %64, %60
  br label %127

69:                                               ; preds = %55
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = call i64 @bfd_stat_arch_elt(%struct.TYPE_10__* %70, %struct.stat* %12)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @fatal(i32 %74, i8* %77)
  br label %79

79:                                               ; preds = %73, %69
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sle i64 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %127

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %52
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* @pos_after, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call %struct.TYPE_10__** @get_pos_bfd(%struct.TYPE_10__** %89, i32 %90, i8* %93)
  store %struct.TYPE_10__** %94, %struct.TYPE_10__*** %8, align 8
  %95 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %96 = load i8**, i8*** %5, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* @verbose, align 4
  %99 = call i64 @ar_emul_replace(%struct.TYPE_10__** %95, i8* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %87
  %102 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %106, align 8
  %107 = load i64, i64* @TRUE, align 8
  store i64 %107, i64* %7, align 8
  br label %108

108:                                              ; preds = %101, %87
  br label %127

109:                                              ; preds = %47, %33
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  store %struct.TYPE_10__** %111, %struct.TYPE_10__*** %10, align 8
  br label %29

112:                                              ; preds = %29
  br label %113

113:                                              ; preds = %112, %23
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i32, i32* @pos_end, align 4
  %117 = call %struct.TYPE_10__** @get_pos_bfd(%struct.TYPE_10__** %115, i32 %116, i8* null)
  store %struct.TYPE_10__** %117, %struct.TYPE_10__*** %8, align 8
  %118 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %119 = load i8**, i8*** %5, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* @verbose, align 4
  %122 = call i64 @ar_emul_append(%struct.TYPE_10__** %118, i8* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %113
  %125 = load i64, i64* @TRUE, align 8
  store i64 %125, i64* %7, align 8
  br label %126

126:                                              ; preds = %124, %113
  br label %127

127:                                              ; preds = %126, %108, %85, %68
  %128 = load i8**, i8*** %5, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i32 1
  store i8** %129, i8*** %5, align 8
  br label %14

130:                                              ; preds = %21
  %131 = load i64, i64* %7, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = call i32 @write_archive(%struct.TYPE_10__* %134)
  br label %137

136:                                              ; preds = %130
  store i32* null, i32** @output_filename, align 8
  br label %137

137:                                              ; preds = %136, %133
  ret void
}

declare dso_local i64 @FILENAME_CMP(i32, i32) #1

declare dso_local i32 @normalize(i8*, %struct.TYPE_10__*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @bfd_fatal(i8*) #1

declare dso_local i64 @bfd_stat_arch_elt(%struct.TYPE_10__*, %struct.stat*) #1

declare dso_local i32 @fatal(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_10__** @get_pos_bfd(%struct.TYPE_10__**, i32, i8*) #1

declare dso_local i64 @ar_emul_replace(%struct.TYPE_10__**, i8*, i32) #1

declare dso_local i64 @ar_emul_append(%struct.TYPE_10__**, i8*, i32) #1

declare dso_local i32 @write_archive(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
