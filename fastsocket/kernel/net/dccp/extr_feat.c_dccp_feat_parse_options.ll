; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_feat.c_dccp_feat_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_feat.c_dccp_feat_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dccp_request_sock = type { %struct.list_head }
%struct.list_head = type { i32 }
%struct.dccp_sock = type { %struct.list_head }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_feat_parse_options(%struct.sock* %0, %struct.dccp_request_sock* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.dccp_request_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.dccp_sock*, align 8
  %17 = alloca %struct.list_head*, align 8
  %18 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %9, align 8
  store %struct.dccp_request_sock* %1, %struct.dccp_request_sock** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.sock*, %struct.sock** %9, align 8
  %20 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %19)
  store %struct.dccp_sock* %20, %struct.dccp_sock** %16, align 8
  %21 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %10, align 8
  %22 = icmp ne %struct.dccp_request_sock* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %7
  %24 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %10, align 8
  %25 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %24, i32 0, i32 0
  br label %29

26:                                               ; preds = %7
  %27 = load %struct.dccp_sock*, %struct.dccp_sock** %16, align 8
  %28 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %27, i32 0, i32 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi %struct.list_head* [ %25, %23 ], [ %28, %26 ]
  store %struct.list_head* %30, %struct.list_head** %17, align 8
  store i32 0, i32* %18, align 4
  %31 = load %struct.sock*, %struct.sock** %9, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %56 [
    i32 129, label %34
    i32 128, label %35
  ]

34:                                               ; preds = %29
  store i32 1, i32* %18, align 4
  br label %35

35:                                               ; preds = %29, %34
  %36 = load i32, i32* %12, align 4
  switch i32 %36, label %55 [
    i32 133, label %37
    i32 132, label %37
    i32 130, label %46
    i32 131, label %46
  ]

37:                                               ; preds = %35, %35
  %38 = load %struct.list_head*, %struct.list_head** %17, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %18, align 4
  %45 = call i32 @dccp_feat_change_recv(%struct.list_head* %38, i32 %39, i32 %40, i32 %41, i32* %42, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %57

46:                                               ; preds = %35, %35
  %47 = load %struct.list_head*, %struct.list_head** %17, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %18, align 4
  %54 = call i32 @dccp_feat_confirm_recv(%struct.list_head* %47, i32 %48, i32 %49, i32 %50, i32* %51, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %57

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %55, %29
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %46, %37
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @dccp_feat_change_recv(%struct.list_head*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @dccp_feat_confirm_recv(%struct.list_head*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
