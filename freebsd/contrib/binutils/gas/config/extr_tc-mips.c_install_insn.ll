; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_install_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_install_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mips_cl_insn = type { i32, i32, i32, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@mips_opts = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mips_cl_insn*)* @install_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_insn(%struct.mips_cl_insn* %0) #0 {
  %2 = alloca %struct.mips_cl_insn*, align 8
  %3 = alloca i8*, align 8
  store %struct.mips_cl_insn* %0, %struct.mips_cl_insn** %2, align 8
  %4 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %2, align 8
  %5 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %4, i32 0, i32 5
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %2, align 8
  %10 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %8, i64 %12
  store i8* %13, i8** %3, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mips_opts, i32 0, i32 0), align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %2, align 8
  %19 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @md_number_to_chars(i8* %17, i32 %20, i32 4)
  br label %62

22:                                               ; preds = %1
  %23 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %2, align 8
  %24 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i8*, i8** %3, align 8
  %29 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %2, align 8
  %30 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 16
  %33 = call i32 @md_number_to_chars(i8* %28, i32 %32, i32 2)
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %2, align 8
  %37 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 65535
  %40 = call i32 @md_number_to_chars(i8* %35, i32 %39, i32 2)
  br label %61

41:                                               ; preds = %22
  %42 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %2, align 8
  %43 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i8*, i8** %3, align 8
  %48 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %2, align 8
  %49 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = or i32 61440, %50
  %52 = call i32 @md_number_to_chars(i8* %47, i32 %51, i32 2)
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8* %54, i8** %3, align 8
  br label %55

55:                                               ; preds = %46, %41
  %56 = load i8*, i8** %3, align 8
  %57 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %2, align 8
  %58 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @md_number_to_chars(i8* %56, i32 %59, i32 2)
  br label %61

61:                                               ; preds = %55, %27
  br label %62

62:                                               ; preds = %61, %16
  ret void
}

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
