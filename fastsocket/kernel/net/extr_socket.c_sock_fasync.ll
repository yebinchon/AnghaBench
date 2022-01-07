; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_fasync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_fasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, %struct.socket* }
%struct.socket = type { %struct.sock*, %struct.fasync_struct* }
%struct.sock = type { i32 }
%struct.fasync_struct = type { i32, %struct.fasync_struct*, i32, %struct.file* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FASYNC = common dso_local global i32 0, align 4
@FASYNC_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, i32)* @sock_fasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_fasync(i32 %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fasync_struct*, align 8
  %9 = alloca %struct.fasync_struct*, align 8
  %10 = alloca %struct.fasync_struct**, align 8
  %11 = alloca %struct.socket*, align 8
  %12 = alloca %struct.sock*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.fasync_struct* null, %struct.fasync_struct** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.fasync_struct* @kmalloc(i32 32, i32 %16)
  store %struct.fasync_struct* %17, %struct.fasync_struct** %9, align 8
  %18 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %19 = icmp eq %struct.fasync_struct* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %148

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %3
  %25 = load %struct.file*, %struct.file** %6, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 2
  %27 = load %struct.socket*, %struct.socket** %26, align 8
  store %struct.socket* %27, %struct.socket** %11, align 8
  %28 = load %struct.socket*, %struct.socket** %11, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  %30 = load %struct.sock*, %struct.sock** %29, align 8
  store %struct.sock* %30, %struct.sock** %12, align 8
  %31 = load %struct.sock*, %struct.sock** %12, align 8
  %32 = icmp eq %struct.sock* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %35 = call i32 @kfree(%struct.fasync_struct* %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %148

38:                                               ; preds = %24
  %39 = load %struct.sock*, %struct.sock** %12, align 8
  %40 = call i32 @lock_sock(%struct.sock* %39)
  %41 = load %struct.file*, %struct.file** %6, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i32, i32* @FASYNC, align 4
  %48 = load %struct.file*, %struct.file** %6, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %59

52:                                               ; preds = %38
  %53 = load i32, i32* @FASYNC, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.file*, %struct.file** %6, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %46
  %60 = load %struct.file*, %struct.file** %6, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.socket*, %struct.socket** %11, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 1
  store %struct.fasync_struct** %64, %struct.fasync_struct*** %10, align 8
  %65 = load %struct.fasync_struct**, %struct.fasync_struct*** %10, align 8
  %66 = load %struct.fasync_struct*, %struct.fasync_struct** %65, align 8
  store %struct.fasync_struct* %66, %struct.fasync_struct** %8, align 8
  br label %67

67:                                               ; preds = %78, %59
  %68 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %69 = icmp ne %struct.fasync_struct* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %72 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %71, i32 0, i32 3
  %73 = load %struct.file*, %struct.file** %72, align 8
  %74 = load %struct.file*, %struct.file** %6, align 8
  %75 = icmp eq %struct.file* %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %83

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %80 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %79, i32 0, i32 1
  store %struct.fasync_struct** %80, %struct.fasync_struct*** %10, align 8
  %81 = load %struct.fasync_struct**, %struct.fasync_struct*** %10, align 8
  %82 = load %struct.fasync_struct*, %struct.fasync_struct** %81, align 8
  store %struct.fasync_struct* %82, %struct.fasync_struct** %8, align 8
  br label %67

83:                                               ; preds = %76, %67
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %125

86:                                               ; preds = %83
  %87 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %88 = icmp ne %struct.fasync_struct* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load %struct.sock*, %struct.sock** %12, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 0
  %92 = call i32 @write_lock_bh(i32* %91)
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %95 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.sock*, %struct.sock** %12, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 0
  %98 = call i32 @write_unlock_bh(i32* %97)
  %99 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %100 = call i32 @kfree(%struct.fasync_struct* %99)
  br label %143

101:                                              ; preds = %86
  %102 = load %struct.file*, %struct.file** %6, align 8
  %103 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %104 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %103, i32 0, i32 3
  store %struct.file* %102, %struct.file** %104, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %107 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @FASYNC_MAGIC, align 4
  %109 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %110 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.socket*, %struct.socket** %11, align 8
  %112 = getelementptr inbounds %struct.socket, %struct.socket* %111, i32 0, i32 1
  %113 = load %struct.fasync_struct*, %struct.fasync_struct** %112, align 8
  %114 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %115 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %114, i32 0, i32 1
  store %struct.fasync_struct* %113, %struct.fasync_struct** %115, align 8
  %116 = load %struct.sock*, %struct.sock** %12, align 8
  %117 = getelementptr inbounds %struct.sock, %struct.sock* %116, i32 0, i32 0
  %118 = call i32 @write_lock_bh(i32* %117)
  %119 = load %struct.fasync_struct*, %struct.fasync_struct** %9, align 8
  %120 = load %struct.socket*, %struct.socket** %11, align 8
  %121 = getelementptr inbounds %struct.socket, %struct.socket* %120, i32 0, i32 1
  store %struct.fasync_struct* %119, %struct.fasync_struct** %121, align 8
  %122 = load %struct.sock*, %struct.sock** %12, align 8
  %123 = getelementptr inbounds %struct.sock, %struct.sock* %122, i32 0, i32 0
  %124 = call i32 @write_unlock_bh(i32* %123)
  br label %142

125:                                              ; preds = %83
  %126 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %127 = icmp ne %struct.fasync_struct* %126, null
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load %struct.sock*, %struct.sock** %12, align 8
  %130 = getelementptr inbounds %struct.sock, %struct.sock* %129, i32 0, i32 0
  %131 = call i32 @write_lock_bh(i32* %130)
  %132 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %133 = getelementptr inbounds %struct.fasync_struct, %struct.fasync_struct* %132, i32 0, i32 1
  %134 = load %struct.fasync_struct*, %struct.fasync_struct** %133, align 8
  %135 = load %struct.fasync_struct**, %struct.fasync_struct*** %10, align 8
  store %struct.fasync_struct* %134, %struct.fasync_struct** %135, align 8
  %136 = load %struct.sock*, %struct.sock** %12, align 8
  %137 = getelementptr inbounds %struct.sock, %struct.sock* %136, i32 0, i32 0
  %138 = call i32 @write_unlock_bh(i32* %137)
  %139 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %140 = call i32 @kfree(%struct.fasync_struct* %139)
  br label %141

141:                                              ; preds = %128, %125
  br label %142

142:                                              ; preds = %141, %101
  br label %143

143:                                              ; preds = %142, %89
  %144 = load %struct.socket*, %struct.socket** %11, align 8
  %145 = getelementptr inbounds %struct.socket, %struct.socket* %144, i32 0, i32 0
  %146 = load %struct.sock*, %struct.sock** %145, align 8
  %147 = call i32 @release_sock(%struct.sock* %146)
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %143, %33, %20
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.fasync_struct* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.fasync_struct*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
