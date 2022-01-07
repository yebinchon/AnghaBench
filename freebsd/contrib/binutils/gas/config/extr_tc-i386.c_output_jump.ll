; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_output_jump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_output_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64*, i64, i32*, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@i = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@JumpByte = common dso_local global i32 0, align 4
@ADDR_PREFIX = common dso_local global i64 0, align 8
@ADDR_PREFIX_OPCODE = common dso_local global i64 0, align 8
@SEG_PREFIX = common dso_local global i64 0, align 8
@CS_PREFIX_OPCODE = common dso_local global i64 0, align 8
@DS_PREFIX_OPCODE = common dso_local global i64 0, align 8
@flag_code = common dso_local global i64 0, align 8
@CODE_16BIT = common dso_local global i64 0, align 8
@CODE16 = common dso_local global i32 0, align 4
@DATA_PREFIX = common dso_local global i64 0, align 8
@DATA_PREFIX_OPCODE = common dso_local global i64 0, align 8
@REX_PREFIX = common dso_local global i64 0, align 8
@intel_syntax = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"skipping prefixes on this instruction\00", align 1
@frag_now = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_jump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_jump() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 4, i32 0), align 8
  %6 = load i32, i32* @JumpByte, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %0
  store i32 1, i32* %2, align 4
  %10 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 0), align 8
  %11 = load i64, i64* @ADDR_PREFIX, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load i64, i64* @ADDR_PREFIX_OPCODE, align 8
  %17 = call i32 @FRAG_APPEND_1_CHAR(i64 %16)
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 1), align 8
  %19 = sub nsw i64 %18, 1
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 1), align 8
  br label %20

20:                                               ; preds = %15, %9
  %21 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 0), align 8
  %22 = load i64, i64* @SEG_PREFIX, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CS_PREFIX_OPCODE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 0), align 8
  %29 = load i64, i64* @SEG_PREFIX, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DS_PREFIX_OPCODE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %27, %20
  %35 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 0), align 8
  %36 = load i64, i64* @SEG_PREFIX, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @FRAG_APPEND_1_CHAR(i64 %38)
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 1), align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 1), align 8
  br label %42

42:                                               ; preds = %34, %27
  br label %68

43:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  %44 = load i64, i64* @flag_code, align 8
  %45 = load i64, i64* @CODE_16BIT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @CODE16, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 0), align 8
  %51 = load i64, i64* @DATA_PREFIX, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i64, i64* @DATA_PREFIX_OPCODE, align 8
  %57 = call i32 @FRAG_APPEND_1_CHAR(i64 %56)
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 1), align 8
  %59 = sub nsw i64 %58, 1
  store i64 %59, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 1), align 8
  %60 = load i32, i32* @CODE16, align 4
  %61 = load i32, i32* %4, align 4
  %62 = xor i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %55, %49
  store i32 4, i32* %2, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 2, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %63
  br label %68

68:                                               ; preds = %67, %42
  %69 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 0), align 8
  %70 = load i64, i64* @REX_PREFIX, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 0), align 8
  %76 = load i64, i64* @REX_PREFIX, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @FRAG_APPEND_1_CHAR(i64 %78)
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 1), align 8
  %81 = sub nsw i64 %80, 1
  store i64 %81, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 1), align 8
  br label %82

82:                                               ; preds = %74, %68
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 1), align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32, i32* @intel_syntax, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %90 = call i32 @as_warn(i32 %89)
  br label %91

91:                                               ; preds = %88, %85, %82
  %92 = load i32, i32* %2, align 4
  %93 = add nsw i32 1, %92
  %94 = call i8* @frag_more(i32 %93)
  store i8* %94, i8** %1, align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 4, i32 1), align 4
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %1, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %1, align 8
  store i8 %96, i8* %97, align 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %100 = load i8*, i8** %1, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** @frag_now, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 0, %104
  %106 = getelementptr inbounds i8, i8* %100, i64 %105
  %107 = load i32, i32* %2, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 3), align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %2, align 4
  %113 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @i, i32 0, i32 2), align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @reloc(i32 %112, i32 1, i32 1, i32 %115)
  %117 = call %struct.TYPE_10__* @fix_new_exp(%struct.TYPE_12__* %99, i8* %106, i32 %107, i32 %111, i32 1, i32 %116)
  store %struct.TYPE_10__* %117, %struct.TYPE_10__** %3, align 8
  %118 = load i32, i32* %2, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %123

120:                                              ; preds = %91
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %91
  ret void
}

declare dso_local i32 @FRAG_APPEND_1_CHAR(i64) #1

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @frag_more(i32) #1

declare dso_local %struct.TYPE_10__* @fix_new_exp(%struct.TYPE_12__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @reloc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
