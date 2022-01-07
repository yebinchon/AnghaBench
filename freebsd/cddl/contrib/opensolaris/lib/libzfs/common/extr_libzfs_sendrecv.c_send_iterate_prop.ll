; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_send_iterate_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_send_iterate_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@ZPROP_INVAL = common dso_local global i64 0, align 8
@ZFS_PROP_QUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_RESERVATION = common dso_local global i64 0, align 8
@ZFS_PROP_REFQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_REFRESERVATION = common dso_local global i64 0, align 8
@ZPROP_VALUE = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i64 0, align 8
@ZPROP_SOURCE = common dso_local global i32 0, align 4
@ZPROP_SOURCE_VAL_RECVD = common dso_local global i32 0, align 4
@PROP_TYPE_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @send_iterate_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_iterate_prop(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  br label %14

14:                                               ; preds = %151, %112, %99, %91, %73, %38, %33, %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @nvlist_next_nvpair(i32 %17, i32* %18)
  store i32* %19, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %152

21:                                               ; preds = %14
  %22 = load i32*, i32** %5, align 8
  %23 = call i8* @nvpair_name(i32* %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @zfs_name_to_prop(i8* %24)
  store i64 %25, i64* %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @zfs_prop_user(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %21
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @ZPROP_INVAL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %14

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @zfs_prop_readonly(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %14

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32*, i32** %5, align 8
  %42 = call i64 @nvpair_value_nvlist(i32* %41, i32** %8)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @verify(i32 %44)
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @ZFS_PROP_QUOTA, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %40
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @ZFS_PROP_RESERVATION, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @ZFS_PROP_REFQUOTA, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @ZFS_PROP_REFRESERVATION, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %94

61:                                               ; preds = %57, %53, %49, %40
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* @ZPROP_VALUE, align 4
  %64 = call i64 @nvlist_lookup_uint64(i32* %62, i32 %63, i32* %10)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @verify(i32 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %14

74:                                               ; preds = %61
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* @ZPROP_SOURCE, align 4
  %77 = call i64 @nvlist_lookup_string(i32* %75, i32 %76, i8** %9)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @strcmp(i8* %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* @ZPROP_SOURCE_VAL_RECVD, align 4
  %89 = call i64 @strcmp(i8* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %14

92:                                               ; preds = %86, %79
  br label %93

93:                                               ; preds = %92, %74
  br label %114

94:                                               ; preds = %57
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* @ZPROP_SOURCE, align 4
  %97 = call i64 @nvlist_lookup_string(i32* %95, i32 %96, i8** %11)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %14

100:                                              ; preds = %94
  %101 = load i8*, i8** %11, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @strcmp(i8* %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i8*, i8** %11, align 8
  %109 = load i32, i32* @ZPROP_SOURCE_VAL_RECVD, align 4
  %110 = call i64 @strcmp(i8* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %14

113:                                              ; preds = %107, %100
  br label %114

114:                                              ; preds = %113, %93
  %115 = load i8*, i8** %6, align 8
  %116 = call i64 @zfs_prop_user(i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %114
  %119 = load i64, i64* %7, align 8
  %120 = call i64 @zfs_prop_get_type(i64 %119)
  %121 = load i64, i64* @PROP_TYPE_STRING, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %118, %114
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* @ZPROP_VALUE, align 4
  %126 = call i64 @nvlist_lookup_string(i32* %124, i32 %125, i8** %12)
  %127 = icmp eq i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @verify(i32 %128)
  %130 = load i32*, i32** %4, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = call i64 @nvlist_add_string(i32* %130, i8* %131, i8* %132)
  %134 = icmp eq i64 0, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @VERIFY(i32 %135)
  br label %151

137:                                              ; preds = %118
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* @ZPROP_VALUE, align 4
  %140 = call i64 @nvlist_lookup_uint64(i32* %138, i32 %139, i32* %13)
  %141 = icmp eq i64 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @verify(i32 %142)
  %144 = load i32*, i32** %4, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i64 @nvlist_add_uint64(i32* %144, i8* %145, i32 %146)
  %148 = icmp eq i64 0, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @VERIFY(i32 %149)
  br label %151

151:                                              ; preds = %137, %123
  br label %14

152:                                              ; preds = %14
  ret void
}

declare dso_local i32* @nvlist_next_nvpair(i32, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i64 @zfs_name_to_prop(i8*) #1

declare dso_local i64 @zfs_prop_user(i8*) #1

declare dso_local i64 @zfs_prop_readonly(i64) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @zfs_prop_get_type(i64) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
