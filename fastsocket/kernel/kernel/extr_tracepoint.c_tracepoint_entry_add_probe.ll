; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_tracepoint.c_tracepoint_entry_add_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_tracepoint.c_tracepoint_entry_add_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint_entry = type { i8**, i32 }

@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tracepoint_entry*, i8*)* @tracepoint_entry_add_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tracepoint_entry_add_probe(%struct.tracepoint_entry* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tracepoint_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  store %struct.tracepoint_entry* %0, %struct.tracepoint_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %4, align 8
  %15 = call i32 @debug_print_probes(%struct.tracepoint_entry* %14)
  %16 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %4, align 8
  %17 = getelementptr inbounds %struct.tracepoint_entry, %struct.tracepoint_entry* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  store i8** %18, i8*** %7, align 8
  %19 = load i8**, i8*** %7, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %42, %21
  %23 = load i8**, i8*** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = load i8**, i8*** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* @EEXIST, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i8* @ERR_PTR(i32 %39)
  store i8* %40, i8** %3, align 8
  br label %89

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %22

45:                                               ; preds = %22
  br label %46

46:                                               ; preds = %45, %2
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 2
  %49 = call i8** @allocate_probes(i32 %48)
  store i8** %49, i8*** %8, align 8
  %50 = load i8**, i8*** %8, align 8
  %51 = icmp eq i8** %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  %55 = call i8* @ERR_PTR(i32 %54)
  store i8* %55, i8** %3, align 8
  br label %89

56:                                               ; preds = %46
  %57 = load i8**, i8*** %7, align 8
  %58 = icmp ne i8** %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i8**, i8*** %8, align 8
  %61 = load i8**, i8*** %7, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memcpy(i8** %60, i8** %61, i32 %65)
  br label %67

67:                                               ; preds = %59, %56
  %68 = load i8*, i8** %5, align 8
  %69 = load i8**, i8*** %8, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8* %68, i8** %72, align 8
  %73 = load i8**, i8*** %8, align 8
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %73, i64 %76
  store i8* null, i8** %77, align 8
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  %80 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %4, align 8
  %81 = getelementptr inbounds %struct.tracepoint_entry, %struct.tracepoint_entry* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load i8**, i8*** %8, align 8
  %83 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %4, align 8
  %84 = getelementptr inbounds %struct.tracepoint_entry, %struct.tracepoint_entry* %83, i32 0, i32 0
  store i8** %82, i8*** %84, align 8
  %85 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %4, align 8
  %86 = call i32 @debug_print_probes(%struct.tracepoint_entry* %85)
  %87 = load i8**, i8*** %7, align 8
  %88 = bitcast i8** %87 to i8*
  store i8* %88, i8** %3, align 8
  br label %89

89:                                               ; preds = %67, %52, %37
  %90 = load i8*, i8** %3, align 8
  ret i8* %90
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @debug_print_probes(%struct.tracepoint_entry*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8** @allocate_probes(i32) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
