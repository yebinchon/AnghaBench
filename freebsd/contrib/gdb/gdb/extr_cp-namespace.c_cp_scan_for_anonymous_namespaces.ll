; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_cp_scan_for_anonymous_namespaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_cp_scan_for_anonymous_namespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }

@processing_has_namespace_info = common dso_local global i32 0, align 4
@ANONYMOUS_NAMESPACE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"(anonymous namespace)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cp_scan_for_anonymous_namespaces(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  %7 = load i32, i32* @processing_has_namespace_info, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %71, label %9

9:                                                ; preds = %1
  %10 = load %struct.symbol*, %struct.symbol** %2, align 8
  %11 = call i8* @SYMBOL_CPLUS_DEMANGLED_NAME(%struct.symbol* %10)
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %71

13:                                               ; preds = %9
  %14 = load %struct.symbol*, %struct.symbol** %2, align 8
  %15 = call i8* @SYMBOL_CPLUS_DEMANGLED_NAME(%struct.symbol* %14)
  store i8* %15, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @cp_is_anonymous(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %71

20:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = call i32 @cp_find_first_component(i8* %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %60, %20
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 58
  br i1 %33, label %34, label %70

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sub i32 %35, %36
  %38 = load i32, i32* @ANONYMOUS_NAMESPACE_LEN, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i32, i32* @ANONYMOUS_NAMESPACE_LEN, align 4
  %46 = call i64 @strncmp(i8* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %40
  %49 = load i8*, i8** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = sub i32 %54, 2
  br label %56

56:                                               ; preds = %53, %52
  %57 = phi i32 [ 0, %52 ], [ %55, %53 ]
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @cp_add_using_directive(i8* %49, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %40, %34
  %61 = load i32, i32* %5, align 4
  %62 = add i32 %61, 2
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i8*, i8** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = call i32 @cp_find_first_component(i8* %67)
  %69 = add i32 %63, %68
  store i32 %69, i32* %5, align 4
  br label %26

70:                                               ; preds = %26
  br label %71

71:                                               ; preds = %19, %70, %9, %1
  ret void
}

declare dso_local i8* @SYMBOL_CPLUS_DEMANGLED_NAME(%struct.symbol*) #1

declare dso_local i32 @cp_is_anonymous(i8*) #1

declare dso_local i32 @cp_find_first_component(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @cp_add_using_directive(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
