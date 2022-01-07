; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-ecoff.c_ecoff_frob_file_before_fix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-ecoff.c_ecoff_frob_file_before_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__* }

@ecoff_frob_file_before_fix.names = internal constant [12 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c".rdata\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".init\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".fini\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c".lita\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c".lit8\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c".lit4\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c".sdata\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".got\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c".sbss\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@stdoutput = common dso_local global %struct.TYPE_14__* null, align 8
@.str.12 = private unnamed_addr constant [25 x i8] c"Can't set register masks\00", align 1
@alpha_fprmask = common dso_local global i64 0, align 8
@alpha_gp_value = common dso_local global i32 0, align 4
@alpha_gprmask = common dso_local global i64 0, align 8
@mips_cprmask = common dso_local global i64* null, align 8
@mips_gprmask = common dso_local global i64 0, align 8
@n_names = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecoff_frob_file_before_fix() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca [12 x %struct.TYPE_13__*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store i64 0, i64* %1, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %15, %0
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 12
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [12 x %struct.TYPE_13__*], [12 x %struct.TYPE_13__*]* %3, i64 0, i64 %13
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %14, align 8
  br label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** @stdoutput, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %2, align 8
  br label %22

22:                                               ; preds = %65, %18
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = icmp ne %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %69

25:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 12
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [12 x i8*], [12 x i8*]* @ecoff_frob_file_before_fix.names, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i32 %32, i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %29
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [12 x %struct.TYPE_13__*], [12 x %struct.TYPE_13__*]* %3, i64 0, i64 %42
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %43, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** @stdoutput, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %46 = call i32 @bfd_section_list_remove(%struct.TYPE_14__* %44, %struct.TYPE_13__* %45)
  br label %51

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %26

51:                                               ; preds = %39, %26
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 12
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** @stdoutput, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %57 = load i64, i64* %1, align 8
  %58 = call i32 @bfd_set_section_vma(%struct.TYPE_14__* %55, %struct.TYPE_13__* %56, i64 %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** @stdoutput, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %61 = call i64 @bfd_section_size(%struct.TYPE_14__* %59, %struct.TYPE_13__* %60)
  %62 = load i64, i64* %1, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %1, align 8
  br label %64

64:                                               ; preds = %54, %51
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %2, align 8
  br label %22

69:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %96, %69
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 12
  br i1 %72, label %73, label %99

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [12 x %struct.TYPE_13__*], [12 x %struct.TYPE_13__*]* %3, i64 0, i64 %75
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = icmp ne %struct.TYPE_13__* %77, null
  br i1 %78, label %79, label %95

79:                                               ; preds = %73
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** @stdoutput, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [12 x %struct.TYPE_13__*], [12 x %struct.TYPE_13__*]* %3, i64 0, i64 %82
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load i64, i64* %1, align 8
  %86 = call i32 @bfd_set_section_vma(%struct.TYPE_14__* %80, %struct.TYPE_13__* %84, i64 %85)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** @stdoutput, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [12 x %struct.TYPE_13__*], [12 x %struct.TYPE_13__*]* %3, i64 0, i64 %89
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = call i64 @bfd_section_size(%struct.TYPE_14__* %87, %struct.TYPE_13__* %91)
  %93 = load i64, i64* %1, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %1, align 8
  br label %95

95:                                               ; preds = %79, %73
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %70

99:                                               ; preds = %70
  store i32 11, i32* %4, align 4
  br label %100

100:                                              ; preds = %117, %99
  %101 = load i32, i32* %4, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [12 x %struct.TYPE_13__*], [12 x %struct.TYPE_13__*]* %3, i64 0, i64 %105
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = icmp ne %struct.TYPE_13__* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** @stdoutput, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [12 x %struct.TYPE_13__*], [12 x %struct.TYPE_13__*]* %3, i64 0, i64 %112
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = call i32 @bfd_section_list_prepend(%struct.TYPE_14__* %110, %struct.TYPE_13__* %114)
  br label %116

116:                                              ; preds = %109, %103
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %4, align 4
  br label %100

120:                                              ; preds = %100
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64* null, i64** %7, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** @stdoutput, align 8
  %122 = load i64, i64* %5, align 8
  %123 = load i64, i64* %6, align 8
  %124 = load i64*, i64** %7, align 8
  %125 = call i32 @bfd_ecoff_set_regmasks(%struct.TYPE_14__* %121, i64 %122, i64 %123, i64* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %120
  %128 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %129 = call i32 @as_fatal(i32 %128)
  br label %130

130:                                              ; preds = %127, %120
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @bfd_section_list_remove(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @bfd_set_section_vma(%struct.TYPE_14__*, %struct.TYPE_13__*, i64) #1

declare dso_local i64 @bfd_section_size(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @bfd_section_list_prepend(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @bfd_ecoff_set_regmasks(%struct.TYPE_14__*, i64, i64, i64*) #1

declare dso_local i32 @as_fatal(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
