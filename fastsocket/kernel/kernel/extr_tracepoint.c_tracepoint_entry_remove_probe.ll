; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_tracepoint.c_tracepoint_entry_remove_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_tracepoint.c_tracepoint_entry_remove_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint_entry = type { i8**, i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tracepoint_entry*, i8*)* @tracepoint_entry_remove_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tracepoint_entry_remove_probe(%struct.tracepoint_entry* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tracepoint_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  store %struct.tracepoint_entry* %0, %struct.tracepoint_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %4, align 8
  %13 = getelementptr inbounds %struct.tracepoint_entry, %struct.tracepoint_entry* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  store i8** %14, i8*** %9, align 8
  %15 = load i8**, i8*** %9, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i8* @ERR_PTR(i32 %19)
  store i8* %20, i8** %3, align 8
  br label %129

21:                                               ; preds = %2
  %22 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %4, align 8
  %23 = call i32 @debug_print_probes(%struct.tracepoint_entry* %22)
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %46, %21
  %25 = load i8**, i8*** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i8**, i8*** %9, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34, %31
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %4, align 8
  %56 = getelementptr inbounds %struct.tracepoint_entry, %struct.tracepoint_entry* %55, i32 0, i32 0
  store i8** null, i8*** %56, align 8
  %57 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %4, align 8
  %58 = getelementptr inbounds %struct.tracepoint_entry, %struct.tracepoint_entry* %57, i32 0, i32 1
  store i32 0, i32* %58, align 8
  %59 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %4, align 8
  %60 = call i32 @debug_print_probes(%struct.tracepoint_entry* %59)
  %61 = load i8**, i8*** %9, align 8
  %62 = bitcast i8** %61 to i8*
  store i8* %62, i8** %3, align 8
  br label %129

63:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %64, %65
  %67 = add nsw i32 %66, 1
  %68 = call i8** @allocate_probes(i32 %67)
  store i8** %68, i8*** %10, align 8
  %69 = load i8**, i8*** %10, align 8
  %70 = icmp eq i8** %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  %74 = call i8* @ERR_PTR(i32 %73)
  store i8* %74, i8** %3, align 8
  br label %129

75:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %106, %75
  %77 = load i8**, i8*** %9, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %109

83:                                               ; preds = %76
  %84 = load i8*, i8** %5, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = load i8**, i8*** %9, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = icmp ne i8* %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %86
  %95 = load i8**, i8*** %9, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = load i8**, i8*** %10, align 8
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  store i8* %99, i8** %104, align 8
  br label %105

105:                                              ; preds = %94, %86, %83
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %76

109:                                              ; preds = %76
  %110 = load i8**, i8*** %10, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %110, i64 %114
  store i8* null, i8** %115, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %7, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %4, align 8
  %120 = getelementptr inbounds %struct.tracepoint_entry, %struct.tracepoint_entry* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load i8**, i8*** %10, align 8
  %122 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %4, align 8
  %123 = getelementptr inbounds %struct.tracepoint_entry, %struct.tracepoint_entry* %122, i32 0, i32 0
  store i8** %121, i8*** %123, align 8
  br label %124

124:                                              ; preds = %109
  %125 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %4, align 8
  %126 = call i32 @debug_print_probes(%struct.tracepoint_entry* %125)
  %127 = load i8**, i8*** %9, align 8
  %128 = bitcast i8** %127 to i8*
  store i8* %128, i8** %3, align 8
  br label %129

129:                                              ; preds = %124, %71, %54, %17
  %130 = load i8*, i8** %3, align 8
  ret i8* %130
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @debug_print_probes(%struct.tracepoint_entry*) #1

declare dso_local i8** @allocate_probes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
