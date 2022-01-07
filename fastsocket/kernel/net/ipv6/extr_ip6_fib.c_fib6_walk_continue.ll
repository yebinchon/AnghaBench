; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_walk_continue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_walk_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_walker_t = type { i32, {}*, %struct.fib6_node*, i32, %struct.fib6_node*, i64 }
%struct.fib6_node = type { i32, i32, %struct.fib6_node*, %struct.fib6_node*, %struct.fib6_node* }

@RTN_RTINFO = common dso_local global i32 0, align 4
@FWS_INIT = common dso_local global i8* null, align 8
@RTN_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_walker_t*)* @fib6_walk_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_walk_continue(%struct.fib6_walker_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fib6_walker_t*, align 8
  %4 = alloca %struct.fib6_node*, align 8
  %5 = alloca %struct.fib6_node*, align 8
  %6 = alloca i32, align 4
  store %struct.fib6_walker_t* %0, %struct.fib6_walker_t** %3, align 8
  br label %7

7:                                                ; preds = %156, %145, %136, %113, %72, %54, %1
  %8 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %9 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %8, i32 0, i32 2
  %10 = load %struct.fib6_node*, %struct.fib6_node** %9, align 8
  store %struct.fib6_node* %10, %struct.fib6_node** %4, align 8
  %11 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %12 = icmp eq %struct.fib6_node* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %157

14:                                               ; preds = %7
  %15 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %16 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %14
  %20 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %21 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %22 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %21, i32 0, i32 4
  %23 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %24 = icmp ne %struct.fib6_node* %20, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %27 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RTN_RTINFO, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %34 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 132
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %39 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %38, i32 0, i32 0
  store i32 132, i32* %39, align 8
  %40 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %41 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %44 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %37, %32, %25, %19, %14
  %46 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %47 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %156 [
    i32 131, label %49
    i32 130, label %67
    i32 132, label %90
    i32 128, label %117
  ]

49:                                               ; preds = %45
  %50 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %51 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %50, i32 0, i32 3
  %52 = load %struct.fib6_node*, %struct.fib6_node** %51, align 8
  %53 = icmp ne %struct.fib6_node* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %56 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %55, i32 0, i32 3
  %57 = load %struct.fib6_node*, %struct.fib6_node** %56, align 8
  %58 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %59 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %58, i32 0, i32 2
  store %struct.fib6_node* %57, %struct.fib6_node** %59, align 8
  %60 = load i8*, i8** @FWS_INIT, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %63 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %7

64:                                               ; preds = %49
  %65 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %66 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %65, i32 0, i32 0
  store i32 130, i32* %66, align 8
  br label %67

67:                                               ; preds = %45, %64
  %68 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %69 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %68, i32 0, i32 2
  %70 = load %struct.fib6_node*, %struct.fib6_node** %69, align 8
  %71 = icmp ne %struct.fib6_node* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %74 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %73, i32 0, i32 2
  %75 = load %struct.fib6_node*, %struct.fib6_node** %74, align 8
  %76 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %77 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %76, i32 0, i32 2
  store %struct.fib6_node* %75, %struct.fib6_node** %77, align 8
  %78 = load i8*, i8** @FWS_INIT, align 8
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %81 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %7

82:                                               ; preds = %67
  %83 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %84 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %83, i32 0, i32 0
  store i32 132, i32* %84, align 8
  %85 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %86 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %89 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %45, %82
  %91 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %92 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %90
  %96 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %97 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @RTN_RTINFO, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %95
  %103 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %104 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %103, i32 0, i32 1
  %105 = bitcast {}** %104 to i32 (%struct.fib6_walker_t*)**
  %106 = load i32 (%struct.fib6_walker_t*)*, i32 (%struct.fib6_walker_t*)** %105, align 8
  %107 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %108 = call i32 %106(%struct.fib6_walker_t* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %157

113:                                              ; preds = %102
  br label %7

114:                                              ; preds = %95, %90
  %115 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %116 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %115, i32 0, i32 0
  store i32 128, i32* %116, align 8
  br label %117

117:                                              ; preds = %45, %114
  %118 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %119 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %120 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %119, i32 0, i32 4
  %121 = load %struct.fib6_node*, %struct.fib6_node** %120, align 8
  %122 = icmp eq %struct.fib6_node* %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %157

124:                                              ; preds = %117
  %125 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %126 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %125, i32 0, i32 4
  %127 = load %struct.fib6_node*, %struct.fib6_node** %126, align 8
  store %struct.fib6_node* %127, %struct.fib6_node** %5, align 8
  %128 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %129 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %130 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %129, i32 0, i32 2
  store %struct.fib6_node* %128, %struct.fib6_node** %130, align 8
  %131 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %132 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %131, i32 0, i32 3
  %133 = load %struct.fib6_node*, %struct.fib6_node** %132, align 8
  %134 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %135 = icmp eq %struct.fib6_node* %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %124
  %137 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %138 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %137, i32 0, i32 0
  store i32 130, i32* %138, align 8
  br label %7

139:                                              ; preds = %124
  %140 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %141 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %140, i32 0, i32 2
  %142 = load %struct.fib6_node*, %struct.fib6_node** %141, align 8
  %143 = load %struct.fib6_node*, %struct.fib6_node** %4, align 8
  %144 = icmp eq %struct.fib6_node* %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %139
  %146 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %147 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %146, i32 0, i32 0
  store i32 132, i32* %147, align 8
  %148 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %149 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %148, i32 0, i32 2
  %150 = load %struct.fib6_node*, %struct.fib6_node** %149, align 8
  %151 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.fib6_walker_t*, %struct.fib6_walker_t** %3, align 8
  %154 = getelementptr inbounds %struct.fib6_walker_t, %struct.fib6_walker_t* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 8
  br label %7

155:                                              ; preds = %139
  br label %156

156:                                              ; preds = %155, %45
  br label %7

157:                                              ; preds = %123, %111, %13
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
