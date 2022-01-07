; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_gen_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_gen_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_def = type { i32, i32, i32, i32, i32, i32, %struct.insn_def* }

@defs = common dso_local global %struct.insn_def* null, align 8
@insn_code_number = common dso_local global i8* null, align 8
@insn_index_number = common dso_local global i8* null, align 8
@got_define_asm_attributes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @gen_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_insn(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.insn_def*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call %struct.insn_def* @oballoc(i32 32)
  store %struct.insn_def* %6, %struct.insn_def** %5, align 8
  %7 = load %struct.insn_def*, %struct.insn_def** @defs, align 8
  %8 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %9 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %8, i32 0, i32 6
  store %struct.insn_def* %7, %struct.insn_def** %9, align 8
  %10 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  store %struct.insn_def* %10, %struct.insn_def** @defs, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %13 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %16 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @GET_CODE(i32 %17)
  switch i32 %18, label %76 [
    i32 129, label %19
    i32 128, label %43
    i32 130, label %67
  ]

19:                                               ; preds = %2
  %20 = load i8*, i8** @insn_code_number, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %23 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i8*, i8** @insn_index_number, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %27 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i8* @count_alternatives(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %32 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %34 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %19
  %38 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %39 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %38, i32 0, i32 3
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %19
  %41 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %42 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %41, i32 0, i32 4
  store i32 4, i32* %42, align 8
  br label %78

43:                                               ; preds = %2
  %44 = load i8*, i8** @insn_code_number, align 8
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %47 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i8*, i8** @insn_index_number, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %51 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i8* @count_alternatives(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %56 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %58 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %43
  %62 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %63 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %62, i32 0, i32 3
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %43
  %65 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %66 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %65, i32 0, i32 4
  store i32 3, i32* %66, align 8
  br label %78

67:                                               ; preds = %2
  %68 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %69 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %68, i32 0, i32 1
  store i32 -1, i32* %69, align 4
  %70 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %71 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %70, i32 0, i32 2
  store i32 -1, i32* %71, align 8
  %72 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %73 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %72, i32 0, i32 3
  store i32 1, i32* %73, align 4
  %74 = load %struct.insn_def*, %struct.insn_def** %5, align 8
  %75 = getelementptr inbounds %struct.insn_def, %struct.insn_def* %74, i32 0, i32 4
  store i32 0, i32* %75, align 8
  store i32 1, i32* @got_define_asm_attributes, align 4
  br label %78

76:                                               ; preds = %2
  %77 = call i32 (...) @gcc_unreachable()
  br label %78

78:                                               ; preds = %76, %67, %64, %40
  ret void
}

declare dso_local %struct.insn_def* @oballoc(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i8* @count_alternatives(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
