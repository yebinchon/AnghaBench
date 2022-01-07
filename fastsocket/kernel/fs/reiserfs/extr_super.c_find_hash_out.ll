; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_super.c_find_hash_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_super.c_find_hash_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.cpu_key = type { i32 }
%struct.reiserfs_dir_entry = type { i64, i32*, i32, i32 }

@path = common dso_local global i32 0, align 4
@DEFAULT_HASH = common dso_local global i32 0, align 4
@TYPE_DIRENTRY = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@UNSET_HASH = common dso_local global i32 0, align 4
@NAME_NOT_FOUND = common dso_local global i32 0, align 4
@DOT_DOT_OFFSET = common dso_local global i64 0, align 8
@YURA_HASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"FS seems to be empty, autodetect is using the default hash\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"reiserfs-2506\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"Unable to automatically detect hash function. Please mount with -o hash={tea,rupasov,r5}\00", align 1
@TEA_HASH = common dso_local global i32 0, align 4
@R5_HASH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Unrecognised hash function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @find_hash_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_hash_out(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.cpu_key, align 4
  %7 = alloca %struct.reiserfs_dir_entry, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %12 = load i32, i32* @path, align 4
  %13 = call i32 @INITIALIZE_PATH(i32 %12)
  %14 = load i32, i32* @DEFAULT_HASH, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.super_block*, %struct.super_block** %3, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %5, align 8
  br label %20

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = load i32, i32* @TYPE_DIRENTRY, align 4
  %23 = call i32 @make_cpu_key(%struct.cpu_key* %6, %struct.inode* %21, i32 -1, i32 %22, i32 3)
  %24 = load %struct.super_block*, %struct.super_block** %3, align 8
  %25 = call i32 @search_by_entry_key(%struct.super_block* %24, %struct.cpu_key* %6, i32* @path, %struct.reiserfs_dir_entry* %7)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IO_ERROR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = call i32 @pathrelse(i32* @path)
  %31 = load i32, i32* @UNSET_HASH, align 4
  store i32 %31, i32* %2, align 4
  br label %169

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @NAME_NOT_FOUND, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, -1
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %36, %32
  %41 = call i32 @set_de_name_and_namelen(%struct.reiserfs_dir_entry* %7)
  %42 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i64 @deh_offset(i32* %46)
  %48 = load i64, i64* @DOT_DOT_OFFSET, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load %struct.super_block*, %struct.super_block** %3, align 8
  %52 = call i64 @reiserfs_rupasov_hash(%struct.super_block* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @YURA_HASH, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = load %struct.super_block*, %struct.super_block** %3, align 8
  %58 = call i32 @reiserfs_info(%struct.super_block* %57, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %166

59:                                               ; preds = %40
  %60 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @r5_hash(i32 %61, i32 %63)
  %65 = call i64 @GET_HASH_VALUE(i64 %64)
  store i64 %65, i64* %10, align 8
  %66 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @keyed_hash(i32 %67, i32 %69)
  %71 = call i64 @GET_HASH_VALUE(i64 %70)
  store i64 %71, i64* %9, align 8
  %72 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @yura_hash(i32 %73, i32 %75)
  %77 = call i64 @GET_HASH_VALUE(i64 %76)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %59
  %82 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i64 @deh_offset(i32* %86)
  %88 = call i64 @GET_HASH_VALUE(i64 %87)
  %89 = load i64, i64* %10, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %119, label %91

91:                                               ; preds = %81, %59
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %11, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = call i64 @deh_offset(i32* %101)
  %103 = call i64 @GET_HASH_VALUE(i64 %102)
  %104 = icmp eq i64 %96, %103
  br i1 %104, label %119, label %105

105:                                              ; preds = %95, %91
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* %11, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = call i64 @deh_offset(i32* %115)
  %117 = call i64 @GET_HASH_VALUE(i64 %116)
  %118 = icmp eq i64 %110, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %109, %95, %81
  %120 = load %struct.super_block*, %struct.super_block** %3, align 8
  %121 = call i32 @reiserfs_warning(%struct.super_block* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @UNSET_HASH, align 4
  store i32 %122, i32* %8, align 4
  br label %166

123:                                              ; preds = %109, %105
  %124 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = call i64 @deh_offset(i32* %128)
  %130 = call i64 @GET_HASH_VALUE(i64 %129)
  %131 = load i64, i64* %11, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = load i32, i32* @YURA_HASH, align 4
  store i32 %134, i32* %8, align 4
  br label %165

135:                                              ; preds = %123
  %136 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = call i64 @deh_offset(i32* %140)
  %142 = call i64 @GET_HASH_VALUE(i64 %141)
  %143 = load i64, i64* %9, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = load i32, i32* @TEA_HASH, align 4
  store i32 %146, i32* %8, align 4
  br label %164

147:                                              ; preds = %135
  %148 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = call i64 @deh_offset(i32* %152)
  %154 = call i64 @GET_HASH_VALUE(i64 %153)
  %155 = load i64, i64* %10, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %147
  %158 = load i32, i32* @R5_HASH, align 4
  store i32 %158, i32* %8, align 4
  br label %163

159:                                              ; preds = %147
  %160 = load %struct.super_block*, %struct.super_block** %3, align 8
  %161 = call i32 @reiserfs_warning(%struct.super_block* %160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %162 = load i32, i32* @UNSET_HASH, align 4
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %159, %157
  br label %164

164:                                              ; preds = %163, %145
  br label %165

165:                                              ; preds = %164, %133
  br label %166

166:                                              ; preds = %165, %119, %56
  %167 = call i32 @pathrelse(i32* @path)
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %166, %29
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local i32 @make_cpu_key(%struct.cpu_key*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @search_by_entry_key(%struct.super_block*, %struct.cpu_key*, i32*, %struct.reiserfs_dir_entry*) #1

declare dso_local i32 @pathrelse(i32*) #1

declare dso_local i32 @set_de_name_and_namelen(%struct.reiserfs_dir_entry*) #1

declare dso_local i64 @deh_offset(i32*) #1

declare dso_local i64 @reiserfs_rupasov_hash(%struct.super_block*) #1

declare dso_local i32 @reiserfs_info(%struct.super_block*, i8*) #1

declare dso_local i64 @GET_HASH_VALUE(i64) #1

declare dso_local i64 @r5_hash(i32, i32) #1

declare dso_local i64 @keyed_hash(i32, i32) #1

declare dso_local i64 @yura_hash(i32, i32) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
