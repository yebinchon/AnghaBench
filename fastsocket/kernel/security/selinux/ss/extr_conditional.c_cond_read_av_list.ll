; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_conditional.c_cond_read_av_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_conditional.c_cond_read_av_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.cond_av_list = type { i32 }
%struct.cond_insertf_data = type { %struct.cond_av_list*, i32*, %struct.cond_av_list*, %struct.policydb* }

@cond_insertf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, i8*, %struct.cond_av_list**, %struct.cond_av_list*)* @cond_read_av_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cond_read_av_list(%struct.policydb* %0, i8* %1, %struct.cond_av_list** %2, %struct.cond_av_list* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.policydb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cond_av_list**, align 8
  %9 = alloca %struct.cond_av_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cond_insertf_data, align 8
  store %struct.policydb* %0, %struct.policydb** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.cond_av_list** %2, %struct.cond_av_list*** %8, align 8
  store %struct.cond_av_list* %3, %struct.cond_av_list** %9, align 8
  %15 = load %struct.cond_av_list**, %struct.cond_av_list*** %8, align 8
  store %struct.cond_av_list* null, %struct.cond_av_list** %15, align 8
  store i32 0, i32* %13, align 4
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @next_entry(i32* %16, i8* %17, i32 4)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %60

23:                                               ; preds = %4
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %60

30:                                               ; preds = %23
  %31 = load %struct.policydb*, %struct.policydb** %6, align 8
  %32 = getelementptr inbounds %struct.cond_insertf_data, %struct.cond_insertf_data* %14, i32 0, i32 3
  store %struct.policydb* %31, %struct.policydb** %32, align 8
  %33 = load %struct.cond_av_list*, %struct.cond_av_list** %9, align 8
  %34 = getelementptr inbounds %struct.cond_insertf_data, %struct.cond_insertf_data* %14, i32 0, i32 2
  store %struct.cond_av_list* %33, %struct.cond_av_list** %34, align 8
  %35 = getelementptr inbounds %struct.cond_insertf_data, %struct.cond_insertf_data* %14, i32 0, i32 0
  store %struct.cond_av_list* null, %struct.cond_av_list** %35, align 8
  %36 = getelementptr inbounds %struct.cond_insertf_data, %struct.cond_insertf_data* %14, i32 0, i32 1
  store i32* null, i32** %36, align 8
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %53, %30
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load %struct.policydb*, %struct.policydb** %6, align 8
  %43 = getelementptr inbounds %struct.policydb, %struct.policydb* %42, i32 0, i32 0
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.policydb*, %struct.policydb** %6, align 8
  %46 = load i32, i32* @cond_insertf, align 4
  %47 = call i32 @avtab_read_item(i32* %43, i8* %44, %struct.policydb* %45, i32 %46, %struct.cond_insertf_data* %14)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %60

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %37

56:                                               ; preds = %37
  %57 = getelementptr inbounds %struct.cond_insertf_data, %struct.cond_insertf_data* %14, i32 0, i32 0
  %58 = load %struct.cond_av_list*, %struct.cond_av_list** %57, align 8
  %59 = load %struct.cond_av_list**, %struct.cond_av_list*** %8, align 8
  store %struct.cond_av_list* %58, %struct.cond_av_list** %59, align 8
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %50, %29, %21
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @avtab_read_item(i32*, i8*, %struct.policydb*, i32, %struct.cond_insertf_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
