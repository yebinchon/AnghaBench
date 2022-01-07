; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-spu.c_spu_cons.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-spu.c_spu_cons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }

@O_symbol = common dso_local global i64 0, align 8
@O_constant = common dso_local global i64 0, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"@ppu\00", align 1
@BFD_RELOC_SPU_PPU32 = common dso_local global i32 0, align 4
@BFD_RELOC_SPU_PPU64 = common dso_local global i32 0, align 4
@frag_now = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @spu_cons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_cons(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i64 (...) @is_it_end_of_statement()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @demand_empty_rest_of_line()
  br label %88

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %78, %11
  %13 = call i32 @deferred_expression(%struct.TYPE_8__* %3)
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @O_symbol, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @O_constant, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %74

23:                                               ; preds = %18, %12
  %24 = load i8*, i8** @input_line_pointer, align 8
  %25 = call i64 @strncasecmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = call i8* @frag_more(i32 %28)
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** @input_line_pointer, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  store i8* %31, i8** @input_line_pointer, align 8
  %32 = load i8*, i8** @input_line_pointer, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 45
  br i1 %35, label %41, label %36

36:                                               ; preds = %27
  %37 = load i8*, i8** @input_line_pointer, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 43
  br i1 %40, label %41, label %54

41:                                               ; preds = %36, %27
  %42 = call i32 @expression(%struct.TYPE_8__* %6)
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @O_constant, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %49
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %47, %41
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i32, i32* %2, align 4
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @BFD_RELOC_SPU_PPU32, align 4
  br label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @BFD_RELOC_SPU_PPU64, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %5, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frag_now, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frag_now, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds i8, i8* %64, i64 %69
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @fix_new_exp(%struct.TYPE_9__* %63, i8* %70, i32 %71, %struct.TYPE_8__* %3, i32 0, i32 %72)
  br label %77

74:                                               ; preds = %23, %18
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @emit_expr(%struct.TYPE_8__* %3, i32 %75)
  br label %77

77:                                               ; preds = %74, %61
  br label %78

78:                                               ; preds = %77
  %79 = load i8*, i8** @input_line_pointer, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** @input_line_pointer, align 8
  %81 = load i8, i8* %79, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 44
  br i1 %83, label %12, label %84

84:                                               ; preds = %78
  %85 = load i8*, i8** @input_line_pointer, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 -1
  store i8* %86, i8** @input_line_pointer, align 8
  %87 = call i32 (...) @demand_empty_rest_of_line()
  br label %88

88:                                               ; preds = %84, %9
  ret void
}

declare dso_local i64 @is_it_end_of_statement(...) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

declare dso_local i32 @deferred_expression(%struct.TYPE_8__*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @frag_more(i32) #1

declare dso_local i32 @expression(%struct.TYPE_8__*) #1

declare dso_local i32 @fix_new_exp(%struct.TYPE_9__*, i8*, i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @emit_expr(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
