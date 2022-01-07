; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_web.c_replace_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_web.c_replace_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_ref = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Updating insn %i (%i->%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.df_ref*, i64)* @replace_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace_ref(%struct.df_ref* %0, i64 %1) #0 {
  %3 = alloca %struct.df_ref*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  store %struct.df_ref* %0, %struct.df_ref** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %8 = call i64 @DF_REF_REAL_REG(%struct.df_ref* %7)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %10 = call i64* @DF_REF_REAL_LOC(%struct.df_ref* %9)
  store i64* %10, i64** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %31

15:                                               ; preds = %2
  %16 = load i64, i64* @dump_file, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i64, i64* @dump_file, align 8
  %20 = load %struct.df_ref*, %struct.df_ref** %3, align 8
  %21 = call i32 @DF_REF_INSN(%struct.df_ref* %20)
  %22 = call i32 @INSN_UID(i32 %21)
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @REGNO(i64 %23)
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @REGNO(i64 %25)
  %27 = call i32 @fprintf(i64 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %18, %15
  %29 = load i64, i64* %4, align 8
  %30 = load i64*, i64** %6, align 8
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %14
  ret void
}

declare dso_local i64 @DF_REF_REAL_REG(%struct.df_ref*) #1

declare dso_local i64* @DF_REF_REAL_LOC(%struct.df_ref*) #1

declare dso_local i32 @fprintf(i64, i8*, i32, i32, i32) #1

declare dso_local i32 @INSN_UID(i32) #1

declare dso_local i32 @DF_REF_INSN(%struct.df_ref*) #1

declare dso_local i32 @REGNO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
