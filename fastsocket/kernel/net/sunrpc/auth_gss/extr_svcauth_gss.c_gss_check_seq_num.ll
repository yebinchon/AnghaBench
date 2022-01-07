; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_check_seq_num.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_check_seq_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsc = type { %struct.gss_svc_seq_data }
%struct.gss_svc_seq_data = type { i32, i32, i32 }

@GSS_SEQ_WIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsc*, i32)* @gss_check_seq_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_check_seq_num(%struct.rsc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gss_svc_seq_data*, align 8
  store %struct.rsc* %0, %struct.rsc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rsc*, %struct.rsc** %4, align 8
  %8 = getelementptr inbounds %struct.rsc, %struct.rsc* %7, i32 0, i32 0
  store %struct.gss_svc_seq_data* %8, %struct.gss_svc_seq_data** %6, align 8
  %9 = load %struct.gss_svc_seq_data*, %struct.gss_svc_seq_data** %6, align 8
  %10 = getelementptr inbounds %struct.gss_svc_seq_data, %struct.gss_svc_seq_data* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.gss_svc_seq_data*, %struct.gss_svc_seq_data** %6, align 8
  %14 = getelementptr inbounds %struct.gss_svc_seq_data, %struct.gss_svc_seq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %63

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.gss_svc_seq_data*, %struct.gss_svc_seq_data** %6, align 8
  %20 = getelementptr inbounds %struct.gss_svc_seq_data, %struct.gss_svc_seq_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GSS_SEQ_WIN, align 4
  %23 = add nsw i32 %21, %22
  %24 = icmp sge i32 %18, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load %struct.gss_svc_seq_data*, %struct.gss_svc_seq_data** %6, align 8
  %27 = getelementptr inbounds %struct.gss_svc_seq_data, %struct.gss_svc_seq_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memset(i32 %28, i32 0, i32 4)
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.gss_svc_seq_data*, %struct.gss_svc_seq_data** %6, align 8
  %32 = getelementptr inbounds %struct.gss_svc_seq_data, %struct.gss_svc_seq_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %55

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %40, %33
  %35 = load %struct.gss_svc_seq_data*, %struct.gss_svc_seq_data** %6, align 8
  %36 = getelementptr inbounds %struct.gss_svc_seq_data, %struct.gss_svc_seq_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load %struct.gss_svc_seq_data*, %struct.gss_svc_seq_data** %6, align 8
  %42 = getelementptr inbounds %struct.gss_svc_seq_data, %struct.gss_svc_seq_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.gss_svc_seq_data*, %struct.gss_svc_seq_data** %6, align 8
  %46 = getelementptr inbounds %struct.gss_svc_seq_data, %struct.gss_svc_seq_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @GSS_SEQ_WIN, align 4
  %49 = srem i32 %47, %48
  %50 = load %struct.gss_svc_seq_data*, %struct.gss_svc_seq_data** %6, align 8
  %51 = getelementptr inbounds %struct.gss_svc_seq_data, %struct.gss_svc_seq_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @__clear_bit(i32 %49, i32 %52)
  br label %34

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %54, %25
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @GSS_SEQ_WIN, align 4
  %58 = srem i32 %56, %57
  %59 = load %struct.gss_svc_seq_data*, %struct.gss_svc_seq_data** %6, align 8
  %60 = getelementptr inbounds %struct.gss_svc_seq_data, %struct.gss_svc_seq_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @__set_bit(i32 %58, i32 %61)
  br label %84

63:                                               ; preds = %2
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.gss_svc_seq_data*, %struct.gss_svc_seq_data** %6, align 8
  %66 = getelementptr inbounds %struct.gss_svc_seq_data, %struct.gss_svc_seq_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GSS_SEQ_WIN, align 4
  %69 = sub nsw i32 %67, %68
  %70 = icmp sle i32 %64, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %88

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @GSS_SEQ_WIN, align 4
  %76 = srem i32 %74, %75
  %77 = load %struct.gss_svc_seq_data*, %struct.gss_svc_seq_data** %6, align 8
  %78 = getelementptr inbounds %struct.gss_svc_seq_data, %struct.gss_svc_seq_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @__test_and_set_bit(i32 %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %88

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %55
  %85 = load %struct.gss_svc_seq_data*, %struct.gss_svc_seq_data** %6, align 8
  %86 = getelementptr inbounds %struct.gss_svc_seq_data, %struct.gss_svc_seq_data* %85, i32 0, i32 1
  %87 = call i32 @spin_unlock(i32* %86)
  store i32 1, i32* %3, align 4
  br label %92

88:                                               ; preds = %82, %71
  %89 = load %struct.gss_svc_seq_data*, %struct.gss_svc_seq_data** %6, align 8
  %90 = getelementptr inbounds %struct.gss_svc_seq_data, %struct.gss_svc_seq_data* %89, i32 0, i32 1
  %91 = call i32 @spin_unlock(i32* %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %84
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i64 @__test_and_set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
