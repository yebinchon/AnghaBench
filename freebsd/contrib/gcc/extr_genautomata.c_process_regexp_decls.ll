; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_process_regexp_decls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_process_regexp_decls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_10__ = type { i8* }

@description = common dso_local global %struct.TYPE_8__* null, align 8
@dm_reserv = common dso_local global i64 0, align 8
@dm_insn_reserv = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @process_regexp_decls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_regexp_decls() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %48, %0
  %4 = load i32, i32* %2, align 4
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @description, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %4, %7
  br i1 %8, label %9, label %51

9:                                                ; preds = %3
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @description, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %12, i64 %14
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %1, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @dm_reserv, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %9
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %24 = call %struct.TYPE_9__* @DECL_RESERV(%struct.TYPE_7__* %23)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @process_regexp(i8* %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %29 = call %struct.TYPE_9__* @DECL_RESERV(%struct.TYPE_7__* %28)
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  br label %47

31:                                               ; preds = %9
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @dm_insn_reserv, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %39 = call %struct.TYPE_10__* @DECL_INSN_RESERV(%struct.TYPE_7__* %38)
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @process_regexp(i8* %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %44 = call %struct.TYPE_10__* @DECL_INSN_RESERV(%struct.TYPE_7__* %43)
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  br label %46

46:                                               ; preds = %37, %31
  br label %47

47:                                               ; preds = %46, %22
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %3

51:                                               ; preds = %3
  ret void
}

declare dso_local i8* @process_regexp(i8*) #1

declare dso_local %struct.TYPE_9__* @DECL_RESERV(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_10__* @DECL_INSN_RESERV(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
