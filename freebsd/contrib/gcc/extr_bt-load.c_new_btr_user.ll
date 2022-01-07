; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_new_btr_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_new_btr_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i64, i32*, i64, i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@NULL_RTX = common dso_local global i8* null, align 8
@migrate_btrl_obstack = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Uses target reg: { bb %d, insn %d }\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c": unambiguous use of reg %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_7__*, i32, i8*)* @new_btr_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @new_btr_user(%struct.TYPE_7__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @PATTERN(i8* %11)
  %13 = call i8** @find_btr_use(i32 %12)
  store i8** %13, i8*** %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @PATTERN(i8* %17)
  %19 = load i8**, i8*** %7, align 8
  %20 = call i32 @btr_referenced_p(i32 %18, i8** %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  store i8** null, i8*** %7, align 8
  br label %27

27:                                               ; preds = %26, %16
  br label %28

28:                                               ; preds = %27, %3
  %29 = load i8**, i8*** %7, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8**, i8*** %7, align 8
  %33 = load i8*, i8** %32, align 8
  br label %36

34:                                               ; preds = %28
  %35 = load i8*, i8** @NULL_RTX, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i8* [ %33, %31 ], [ %35, %34 ]
  store i8* %37, i8** %8, align 8
  %38 = call %struct.TYPE_6__* @obstack_alloc(i32* @migrate_btrl_obstack, i32 4)
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %9, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 7
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 -1, i32* %58, align 4
  %59 = load i64, i64* @dump_file, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %36
  %62 = load i64, i64* @dump_file, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @INSN_UID(i8* %66)
  %68 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %61
  %74 = load i64, i64* @dump_file, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @REGNO(i8* %77)
  %79 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %73, %61
  br label %81

81:                                               ; preds = %80, %36
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  ret %struct.TYPE_6__* %82
}

declare dso_local i8** @find_btr_use(i32) #1

declare dso_local i32 @PATTERN(i8*) #1

declare dso_local i32 @btr_referenced_p(i32, i8**) #1

declare dso_local %struct.TYPE_6__* @obstack_alloc(i32*, i32) #1

declare dso_local i32 @fprintf(i64, i8*, i32, ...) #1

declare dso_local i32 @INSN_UID(i8*) #1

declare dso_local i32 @REGNO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
