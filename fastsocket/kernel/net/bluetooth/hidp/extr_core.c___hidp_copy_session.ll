; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c___hidp_copy_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c___hidp_copy_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i8* }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.hidp_conninfo = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"HID Boot Device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidp_session*, %struct.hidp_conninfo*)* @__hidp_copy_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__hidp_copy_session(%struct.hidp_session* %0, %struct.hidp_conninfo* %1) #0 {
  %3 = alloca %struct.hidp_session*, align 8
  %4 = alloca %struct.hidp_conninfo*, align 8
  store %struct.hidp_session* %0, %struct.hidp_session** %3, align 8
  store %struct.hidp_conninfo* %1, %struct.hidp_conninfo** %4, align 8
  %5 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %6 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %5, i32 0, i32 6
  %7 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %8 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %7, i32 0, i32 4
  %9 = call i32 @bacpy(i32* %6, i32* %8)
  %10 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %11 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %14 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %16 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %19 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %21 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %23 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %25 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %24, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %27 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memset(i32 %28, i32 0, i32 128)
  %30 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %31 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %81

34:                                               ; preds = %2
  %35 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %36 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %42 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %44 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %50 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %52 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %58 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %60 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %34
  %66 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %67 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %70 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strncpy(i32 %68, i8* %73, i32 128)
  br label %80

75:                                               ; preds = %34
  %76 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %77 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @strncpy(i32 %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 128)
  br label %80

80:                                               ; preds = %75, %65
  br label %81

81:                                               ; preds = %80, %2
  %82 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %83 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = icmp ne %struct.TYPE_6__* %84, null
  br i1 %85, label %86, label %117

86:                                               ; preds = %81
  %87 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %88 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %93 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %95 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %100 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %102 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %107 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %109 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %112 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @strncpy(i32 %110, i8* %115, i32 128)
  br label %117

117:                                              ; preds = %86, %81
  ret void
}

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
