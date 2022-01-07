; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_output_interseg_jump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_output_interseg_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_7__, i32*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@flag_code = common dso_local global i64 0, align 8
@CODE_16BIT = common dso_local global i64 0, align 8
@CODE16 = common dso_local global i32 0, align 4
@i = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@DATA_PREFIX = common dso_local global i64 0, align 8
@REX_PREFIX = common dso_local global i64 0, align 8
@intel_syntax = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"skipping prefixes on this instruction\00", align 1
@DATA_PREFIX_OPCODE = common dso_local global i32 0, align 4
@O_constant = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"16-bit jump out of range\00", align 1
@frag_now = common dso_local global %struct.TYPE_10__* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"can't handle non absolute segment in `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_interseg_jump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_interseg_jump() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 0, i32* %4, align 4
  %6 = load i64, i64* @flag_code, align 8
  %7 = load i64, i64* @CODE_16BIT, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @CODE16, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %9, %0
  store i32 0, i32* %3, align 4
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 4), align 8
  %13 = load i64, i64* @DATA_PREFIX, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 0), align 8
  %19 = sub nsw i64 %18, 1
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 0), align 8
  %20 = load i32, i32* @CODE16, align 4
  %21 = load i32, i32* %4, align 4
  %22 = xor i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %17, %11
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 4), align 8
  %25 = load i64, i64* @REX_PREFIX, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 0), align 8
  %33 = sub nsw i64 %32, 1
  store i64 %33, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 0), align 8
  br label %34

34:                                               ; preds = %29, %23
  store i32 4, i32* %2, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 2, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 0), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* @intel_syntax, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @as_warn(i32 %45)
  br label %47

47:                                               ; preds = %44, %41, %38
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  %50 = add nsw i32 %49, 2
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %50, %51
  %53 = call i8* @frag_more(i32 %52)
  store i8* %53, i8** %1, align 8
  %54 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 4), align 8
  %55 = load i64, i64* @DATA_PREFIX, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %47
  %60 = load i32, i32* @DATA_PREFIX_OPCODE, align 4
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %1, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %1, align 8
  store i8 %61, i8* %62, align 1
  br label %64

64:                                               ; preds = %59, %47
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 4), align 8
  %66 = load i64, i64* @REX_PREFIX, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 4), align 8
  %72 = load i64, i64* @REX_PREFIX, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %1, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %1, align 8
  store i8 %75, i8* %76, align 1
  br label %78

78:                                               ; preds = %70, %64
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2, i32 1), align 4
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %1, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %1, align 8
  store i8 %80, i8* %81, align 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 1), align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @O_constant, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %116

91:                                               ; preds = %78
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 1), align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %5, align 8
  %98 = load i32, i32* %2, align 4
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %111

100:                                              ; preds = %91
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @fits_in_unsigned_word(i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %100
  %105 = load i64, i64* %5, align 8
  %106 = call i32 @fits_in_signed_word(i64 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %110 = call i32 (i32, ...) @as_bad(i32 %109)
  br label %161

111:                                              ; preds = %104, %100, %91
  %112 = load i8*, i8** %1, align 8
  %113 = load i64, i64* %5, align 8
  %114 = load i32, i32* %2, align 4
  %115 = call i32 @md_number_to_chars(i8* %112, i64 %113, i32 %114)
  br label %136

116:                                              ; preds = %78
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** @frag_now, align 8
  %118 = load i8*, i8** %1, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** @frag_now, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = sub i64 0, %122
  %124 = getelementptr inbounds i8, i8* %118, i64 %123
  %125 = load i32, i32* %2, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 1), align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = load i32, i32* %2, align 4
  %131 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 3), align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @reloc(i32 %130, i32 0, i32 0, i32 %133)
  %135 = call i32 @fix_new_exp(%struct.TYPE_10__* %117, i8* %124, i32 %125, %struct.TYPE_11__* %129, i32 0, i32 %134)
  br label %136

136:                                              ; preds = %116, %111
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 1), align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @O_constant, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %136
  %146 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 2, i32 0), align 8
  %148 = call i32 (i32, ...) @as_bad(i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %136
  %150 = load i8*, i8** %1, align 8
  %151 = load i32, i32* %2, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @i, i32 0, i32 1), align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @md_number_to_chars(i8* %153, i64 %159, i32 2)
  br label %161

161:                                              ; preds = %149, %108
  ret void
}

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @frag_more(i32) #1

declare dso_local i32 @fits_in_unsigned_word(i64) #1

declare dso_local i32 @fits_in_signed_word(i64) #1

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @md_number_to_chars(i8*, i64, i32) #1

declare dso_local i32 @fix_new_exp(%struct.TYPE_10__*, i8*, i32, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @reloc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
