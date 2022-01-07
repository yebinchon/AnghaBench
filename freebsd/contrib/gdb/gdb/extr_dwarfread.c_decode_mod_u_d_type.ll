; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_decode_mod_u_d_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_decode_mod_u_d_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@AT_mod_u_d_type = common dso_local global i32 0, align 4
@GET_UNSIGNED = common dso_local global i32 0, align 4
@current_objfile = common dso_local global i32 0, align 4
@AT_user_def_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (i8*)* @decode_mod_u_d_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @decode_mod_u_d_type(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.type*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.type* null, %struct.type** %3, align 8
  %6 = load i32, i32* @AT_mod_u_d_type, align 4
  %7 = call zeroext i16 @attribute_size(i32 %6)
  %8 = zext i16 %7 to i32
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @GET_UNSIGNED, align 4
  %12 = load i32, i32* @current_objfile, align 4
  %13 = call zeroext i16 @target_to_host(i8* %9, i32 %10, i32 %11, i32 %12)
  store i16 %13, i16* %4, align 2
  %14 = load i32, i32* %5, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %2, align 8
  %18 = load i32, i32* @AT_user_def_type, align 4
  %19 = call zeroext i16 @attribute_size(i32 %18)
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* %4, align 2
  %22 = zext i16 %21 to i32
  %23 = sub nsw i32 %22, %20
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %4, align 2
  %25 = load i8*, i8** %2, align 8
  %26 = load i16, i16* %4, align 2
  %27 = load i32, i32* @AT_mod_u_d_type, align 4
  %28 = call %struct.type* @decode_modified_type(i8* %25, i16 zeroext %26, i32 %27)
  store %struct.type* %28, %struct.type** %3, align 8
  %29 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %29
}

declare dso_local zeroext i16 @attribute_size(i32) #1

declare dso_local zeroext i16 @target_to_host(i8*, i32, i32, i32) #1

declare dso_local %struct.type* @decode_modified_type(i8*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
