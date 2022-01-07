; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_parse_relocation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_parse_relocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.percent_op_match = type { i32, i32 }

@mips_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@mips16_percent_op = common dso_local global %struct.percent_op_match* null, align 8
@mips_percent_op = common dso_local global %struct.percent_op_match* null, align 8
@stdoutput = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"relocation %s isn't supported by the current ABI\00", align 1
@BFD_RELOC_UNUSED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*)* @parse_relocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_relocation(i8** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.percent_op_match*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.percent_op_match*, %struct.percent_op_match** @mips16_percent_op, align 8
  store %struct.percent_op_match* %13, %struct.percent_op_match** %6, align 8
  %14 = load %struct.percent_op_match*, %struct.percent_op_match** @mips16_percent_op, align 8
  %15 = call i64 @ARRAY_SIZE(%struct.percent_op_match* %14)
  store i64 %15, i64* %7, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.percent_op_match*, %struct.percent_op_match** @mips_percent_op, align 8
  store %struct.percent_op_match* %17, %struct.percent_op_match** %6, align 8
  %18 = load %struct.percent_op_match*, %struct.percent_op_match** @mips_percent_op, align 8
  %19 = call i64 @ARRAY_SIZE(%struct.percent_op_match* %18)
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %16, %12
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %103, %20
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %106

25:                                               ; preds = %21
  %26 = load i8**, i8*** %4, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.percent_op_match*, %struct.percent_op_match** %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.percent_op_match, %struct.percent_op_match* %28, i64 %29
  %31 = getelementptr inbounds %struct.percent_op_match, %struct.percent_op_match* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.percent_op_match*, %struct.percent_op_match** %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.percent_op_match, %struct.percent_op_match* %33, i64 %34
  %36 = getelementptr inbounds %struct.percent_op_match, %struct.percent_op_match* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strlen(i32 %37)
  %39 = call i64 @strncasecmp(i8* %27, i32 %32, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %102

41:                                               ; preds = %25
  %42 = load %struct.percent_op_match*, %struct.percent_op_match** %6, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds %struct.percent_op_match, %struct.percent_op_match* %42, i64 %43
  %45 = getelementptr inbounds %struct.percent_op_match, %struct.percent_op_match* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strlen(i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i8**, i8*** %4, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @ISSPACE(i8 signext %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %41
  %57 = load i8**, i8*** %4, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 40
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %103

66:                                               ; preds = %56, %41
  %67 = load %struct.percent_op_match*, %struct.percent_op_match** %6, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.percent_op_match, %struct.percent_op_match* %67, i64 %68
  %70 = getelementptr inbounds %struct.percent_op_match, %struct.percent_op_match* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strlen(i32 %71)
  %73 = load i8**, i8*** %4, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = sext i32 %72 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %73, align 8
  %77 = load %struct.percent_op_match*, %struct.percent_op_match** %6, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.percent_op_match, %struct.percent_op_match* %77, i64 %78
  %80 = getelementptr inbounds %struct.percent_op_match, %struct.percent_op_match* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @stdoutput, align 4
  %84 = load %struct.percent_op_match*, %struct.percent_op_match** %6, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds %struct.percent_op_match, %struct.percent_op_match* %84, i64 %85
  %87 = getelementptr inbounds %struct.percent_op_match, %struct.percent_op_match* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @bfd_reloc_type_lookup(i32 %83, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %66
  %92 = load %struct.percent_op_match*, %struct.percent_op_match** %6, align 8
  %93 = load i64, i64* %8, align 8
  %94 = getelementptr inbounds %struct.percent_op_match, %struct.percent_op_match* %92, i64 %93
  %95 = getelementptr inbounds %struct.percent_op_match, %struct.percent_op_match* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @as_bad(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @BFD_RELOC_UNUSED, align 4
  %99 = load i32*, i32** %5, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %91, %66
  %101 = load i32, i32* @TRUE, align 4
  store i32 %101, i32* %3, align 4
  br label %108

102:                                              ; preds = %25
  br label %103

103:                                              ; preds = %102, %65
  %104 = load i64, i64* %8, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %8, align 8
  br label %21

106:                                              ; preds = %21
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %100
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @ARRAY_SIZE(%struct.percent_op_match*) #1

declare dso_local i64 @strncasecmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @ISSPACE(i8 signext) #1

declare dso_local i32 @bfd_reloc_type_lookup(i32, i32) #1

declare dso_local i32 @as_bad(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
