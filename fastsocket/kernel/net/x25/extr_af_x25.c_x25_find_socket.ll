; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_find_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_find_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.x25_neigh = type { i32 }

@x25_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @x25_find_socket(i32 %0, %struct.x25_neigh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.x25_neigh*, align 8
  %5 = alloca %struct.sock*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.x25_neigh* %1, %struct.x25_neigh** %4, align 8
  %6 = call i32 @read_lock_bh(i32* @x25_list_lock)
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.x25_neigh*, %struct.x25_neigh** %4, align 8
  %9 = call %struct.sock* @__x25_find_socket(i32 %7, %struct.x25_neigh* %8)
  store %struct.sock* %9, %struct.sock** %5, align 8
  %10 = call i32 @read_unlock_bh(i32* @x25_list_lock)
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %11
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.sock* @__x25_find_socket(i32, %struct.x25_neigh*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
