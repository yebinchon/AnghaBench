; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_print_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_print_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }

@output_opcode = common dso_local global i32* null, align 8
@instruction = common dso_local global %struct.TYPE_11__* null, align 8
@relocatable = common dso_local global i64 0, align 8
@BFD_RELOC_NONE = common dso_local global i64 0, align 8
@stdoutput = common dso_local global i32 0, align 4
@frag_now = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"instruction address is not a multiple of 2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @print_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_insn(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [4 x i16], align 2
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %38, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  %15 = load i32*, i32** @output_opcode, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 65535
  %22 = trunc i32 %21 to i16
  %23 = load i32, i32* %4, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 %25
  store i16 %22, i16* %26, align 2
  %27 = load i32*, i32** @output_opcode, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 65535
  %33 = trunc i32 %32 to i16
  %34 = load i32, i32* %4, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %4, align 4
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 %36
  store i16 %33, i16* %37, align 2
  br label %38

38:                                               ; preds = %14
  %39 = load i32, i32* %3, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %11

41:                                               ; preds = %11
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** @instruction, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = mul i32 %45, 2
  %47 = call i8* @frag_more(i32 %46)
  store i8* %47, i8** %6, align 8
  %48 = load i64, i64* @relocatable, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %95

50:                                               ; preds = %41
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BFD_RELOC_NONE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %50
  %57 = load i32, i32* @stdoutput, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call %struct.TYPE_9__* @bfd_reloc_type_lookup(i32 %57, i64 %60)
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %9, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %56
  %65 = call i32 (...) @abort() #3
  unreachable

66:                                               ; preds = %56
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %68 = call i32 @bfd_get_reloc_size(%struct.TYPE_9__* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %10, align 4
  %73 = icmp sgt i32 %72, 4
  br i1 %73, label %74, label %76

74:                                               ; preds = %71, %66
  %75 = call i32 (...) @abort() #3
  unreachable

76:                                               ; preds = %71
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = sub i64 0, %82
  %84 = getelementptr inbounds i8, i8* %78, i64 %83
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @fix_new_exp(%struct.TYPE_12__* %77, i8* %84, i32 %85, i32* %87, i32 %90, i64 %93)
  br label %95

95:                                               ; preds = %76, %50, %41
  %96 = call i32 (...) @frag_now_fix()
  %97 = and i32 %96, 1
  store i32 %97, i32* %8, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %95
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %110 = call i32 @as_bad(i32 %109)
  br label %111

111:                                              ; preds = %108, %102, %95
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %131, %111
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %117
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %3, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 %124
  %126 = load i16, i16* %125, align 2
  %127 = zext i16 %126 to i32
  %128 = call i32 @md_number_to_chars(i8* %122, i32 %127, i32 2)
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 2
  store i8* %130, i8** %6, align 8
  br label %131

131:                                              ; preds = %121
  %132 = load i32, i32* %3, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %3, align 4
  br label %117

134:                                              ; preds = %117
  ret void
}

declare dso_local i8* @frag_more(i32) #1

declare dso_local %struct.TYPE_9__* @bfd_reloc_type_lookup(i32, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @bfd_get_reloc_size(%struct.TYPE_9__*) #1

declare dso_local i32 @fix_new_exp(%struct.TYPE_12__*, i8*, i32, i32*, i32, i64) #1

declare dso_local i32 @frag_now_fix(...) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
