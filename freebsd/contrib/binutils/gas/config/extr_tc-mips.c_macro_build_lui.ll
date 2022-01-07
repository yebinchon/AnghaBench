; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_macro_build_lui.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_macro_build_lui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.mips_opcode = type { i8*, i8* }
%struct.mips_cl_insn = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@BFD_RELOC_UNUSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"lui\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"t,u\00", align 1
@mips_opts = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@O_constant = common dso_local global i64 0, align 8
@O_symbol = common dso_local global i64 0, align 8
@mips_pic = common dso_local global i64 0, align 8
@NO_PIC = common dso_local global i64 0, align 8
@HAVE_NEWABI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"_gp_disp\00", align 1
@mips_in_shared = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"__gnu_local_gp\00", align 1
@BFD_RELOC_HI16_S = common dso_local global i64 0, align 8
@op_hash = common dso_local global i32 0, align 4
@RT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @macro_build_lui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macro_build_lui(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca %struct.mips_opcode*, align 8
  %7 = alloca %struct.mips_cl_insn, align 8
  %8 = alloca [3 x i64], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %12 = load i64, i64* @BFD_RELOC_UNUSED, align 8
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 1
  %14 = load i64, i64* @BFD_RELOC_UNUSED, align 8
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 1
  %16 = load i64, i64* @BFD_RELOC_UNUSED, align 8
  store i64 %16, i64* %15, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mips_opts, i32 0, i32 0), align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = bitcast %struct.TYPE_7__* %5 to i8*
  %24 = bitcast %struct.TYPE_7__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 16, i1 false)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @O_constant, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 32768
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 65535
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = load i64, i64* @BFD_RELOC_UNUSED, align 8
  %37 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  store i64 %36, i64* %37, align 16
  br label %77

38:                                               ; preds = %2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @O_symbol, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i64, i64* @mips_pic, align 8
  %47 = load i64, i64* @NO_PIC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %71, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* @HAVE_NEWABI, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @S_GET_NAME(i32 %55)
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %52, %49
  %60 = load i32, i32* @mips_in_shared, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @S_GET_NAME(i32 %65)
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br label %69

69:                                               ; preds = %62, %59
  %70 = phi i1 [ false, %59 ], [ %68, %62 ]
  br label %71

71:                                               ; preds = %69, %52, %38
  %72 = phi i1 [ true, %52 ], [ true, %38 ], [ %70, %69 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i64, i64* @BFD_RELOC_HI16_S, align 8
  %76 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  store i64 %75, i64* %76, align 16
  br label %77

77:                                               ; preds = %71, %29
  %78 = load i32, i32* @op_hash, align 4
  %79 = load i8*, i8** %9, align 8
  %80 = call %struct.mips_opcode* @hash_find(i32 %78, i8* %79)
  store %struct.mips_opcode* %80, %struct.mips_opcode** %6, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load %struct.mips_opcode*, %struct.mips_opcode** %6, align 8
  %83 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strcmp(i8* %81, i8* %84)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i8*, i8** %10, align 8
  %90 = load %struct.mips_opcode*, %struct.mips_opcode** %6, align 8
  %91 = getelementptr inbounds %struct.mips_opcode, %struct.mips_opcode* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @strcmp(i8* %89, i8* %92)
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load %struct.mips_opcode*, %struct.mips_opcode** %6, align 8
  %98 = call i32 @create_insn(%struct.mips_cl_insn* %7, %struct.mips_opcode* %97)
  %99 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %7, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %7, i32 0, i32 0
  store i32 %102, i32* %103, align 8
  %104 = load i32, i32* @RT, align 4
  %105 = load i32, i32* %4, align 4
  %106 = bitcast %struct.mips_cl_insn* %7 to { i32, %struct.TYPE_6__* }*
  %107 = getelementptr inbounds { i32, %struct.TYPE_6__* }, { i32, %struct.TYPE_6__* }* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds { i32, %struct.TYPE_6__* }, { i32, %struct.TYPE_6__* }* %106, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = call i32 @INSERT_OPERAND(i32 %104, i32 %108, %struct.TYPE_6__* %110, i32 %105)
  %112 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %113 = load i64, i64* %112, align 16
  %114 = load i64, i64* @BFD_RELOC_UNUSED, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %77
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %7, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %118
  store i32 %121, i32* %119, align 8
  %122 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %123 = call i32 @append_insn(%struct.mips_cl_insn* %7, %struct.TYPE_7__* null, i64* %122)
  br label %127

124:                                              ; preds = %77
  %125 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %126 = call i32 @append_insn(%struct.mips_cl_insn* %7, %struct.TYPE_7__* %5, i64* %125)
  br label %127

127:                                              ; preds = %124, %116
  ret void
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @S_GET_NAME(i32) #1

declare dso_local %struct.mips_opcode* @hash_find(i32, i8*) #1

declare dso_local i32 @create_insn(%struct.mips_cl_insn*, %struct.mips_opcode*) #1

declare dso_local i32 @INSERT_OPERAND(i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @append_insn(%struct.mips_cl_insn*, %struct.TYPE_7__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
