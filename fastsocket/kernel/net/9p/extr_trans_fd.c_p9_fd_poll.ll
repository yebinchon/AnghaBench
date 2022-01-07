; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_fd_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_fd_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i64, %struct.p9_trans_fd* }
%struct.p9_trans_fd = type { %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, %struct.poll_table_struct*)* }
%struct.poll_table_struct = type { i32 }

@Connected = common dso_local global i64 0, align 8
@EREMOTEIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.poll_table_struct*)* @p9_fd_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_fd_poll(%struct.p9_client* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_client*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.p9_trans_fd*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  store %struct.p9_trans_fd* null, %struct.p9_trans_fd** %8, align 8
  %9 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %10 = icmp ne %struct.p9_client* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %13 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @Connected, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %19 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %18, i32 0, i32 1
  %20 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %19, align 8
  store %struct.p9_trans_fd* %20, %struct.p9_trans_fd** %8, align 8
  br label %21

21:                                               ; preds = %17, %11, %2
  %22 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %23 = icmp ne %struct.p9_trans_fd* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @EREMOTEIO, align 4
  %26 = sub i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %119

27:                                               ; preds = %21
  %28 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %29 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %36 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_5__*, %struct.poll_table_struct*)*, i32 (%struct.TYPE_5__*, %struct.poll_table_struct*)** %40, align 8
  %42 = icmp ne i32 (%struct.TYPE_5__*, %struct.poll_table_struct*)* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %34, %27
  %44 = load i32, i32* @EIO, align 4
  %45 = sub i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %119

46:                                               ; preds = %34
  %47 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %48 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %55 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_5__*, %struct.poll_table_struct*)*, i32 (%struct.TYPE_5__*, %struct.poll_table_struct*)** %59, align 8
  %61 = icmp ne i32 (%struct.TYPE_5__*, %struct.poll_table_struct*)* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %53, %46
  %63 = load i32, i32* @EIO, align 4
  %64 = sub i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %119

65:                                               ; preds = %53
  %66 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %67 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_5__*, %struct.poll_table_struct*)*, i32 (%struct.TYPE_5__*, %struct.poll_table_struct*)** %71, align 8
  %73 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %74 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %77 = call i32 %72(%struct.TYPE_5__* %75, %struct.poll_table_struct* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %65
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %119

82:                                               ; preds = %65
  %83 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %84 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %87 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = icmp ne %struct.TYPE_5__* %85, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %82
  %91 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %92 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32 (%struct.TYPE_5__*, %struct.poll_table_struct*)*, i32 (%struct.TYPE_5__*, %struct.poll_table_struct*)** %96, align 8
  %98 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %8, align 8
  %99 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %102 = call i32 %97(%struct.TYPE_5__* %100, %struct.poll_table_struct* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %90
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %3, align 4
  br label %119

107:                                              ; preds = %90
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @POLLOUT, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @POLLIN, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = or i32 %111, %115
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %107, %82
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %105, %80, %62, %43, %24
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
