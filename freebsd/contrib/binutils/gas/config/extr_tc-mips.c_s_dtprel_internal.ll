; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_s_dtprel_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_s_dtprel_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@O_symbol = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Unsupported use of %s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".dtpreldword\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c".dtprelword\00", align 1
@frag_now = common dso_local global %struct.TYPE_7__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@BFD_RELOC_MIPS_TLS_DTPREL64 = common dso_local global i32 0, align 4
@BFD_RELOC_MIPS_TLS_DTPREL32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @s_dtprel_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_dtprel_internal(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %5 = call i32 @expression(%struct.TYPE_6__* %3)
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @O_symbol, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* %2, align 8
  %13 = icmp eq i64 %12, 8
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 @as_bad(i32 %11, i8* %15)
  %17 = call i32 (...) @ignore_rest_of_line()
  br label %18

18:                                               ; preds = %10, %1
  %19 = load i64, i64* %2, align 8
  %20 = call i8* @frag_more(i64 %19)
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %2, align 8
  %23 = call i32 @md_number_to_chars(i8* %21, i32 0, i64 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @frag_now, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @frag_now, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds i8, i8* %25, i64 %30
  %32 = load i64, i64* %2, align 8
  %33 = load i32, i32* @FALSE, align 4
  %34 = load i64, i64* %2, align 8
  %35 = icmp eq i64 %34, 8
  br i1 %35, label %36, label %38

36:                                               ; preds = %18
  %37 = load i32, i32* @BFD_RELOC_MIPS_TLS_DTPREL64, align 4
  br label %40

38:                                               ; preds = %18
  %39 = load i32, i32* @BFD_RELOC_MIPS_TLS_DTPREL32, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = call i32 @fix_new_exp(%struct.TYPE_7__* %24, i8* %31, i64 %32, %struct.TYPE_6__* %3, i32 %33, i32 %41)
  %43 = call i32 (...) @demand_empty_rest_of_line()
  ret void
}

declare dso_local i32 @expression(%struct.TYPE_6__*) #1

declare dso_local i32 @as_bad(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i8* @frag_more(i64) #1

declare dso_local i32 @md_number_to_chars(i8*, i32, i64) #1

declare dso_local i32 @fix_new_exp(%struct.TYPE_7__*, i8*, i64, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
