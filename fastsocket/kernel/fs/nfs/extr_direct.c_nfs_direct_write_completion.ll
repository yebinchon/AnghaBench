; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_write_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_write_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { i64, i32 (%struct.nfs_pgio_header*)*, i32, i32, %struct.TYPE_2__, i32, i32, i64, %struct.nfs_direct_req* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_direct_req = type { i64, i64, i32, i32, i32 }
%struct.nfs_commit_info = type { i32 }
%struct.nfs_page = type { i32 }

@NFS_IOHDR_REDO = common dso_local global i32 0, align 4
@NFS_IOHDR_ERROR = common dso_local global i32 0, align 4
@NFS_ODIRECT_RESCHED_WRITES = common dso_local global i64 0, align 8
@NFS_ODIRECT_DO_COMMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pgio_header*)* @nfs_direct_write_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_direct_write_completion(%struct.nfs_pgio_header* %0) #0 {
  %2 = alloca %struct.nfs_pgio_header*, align 8
  %3 = alloca %struct.nfs_direct_req*, align 8
  %4 = alloca %struct.nfs_commit_info, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_pgio_header* %0, %struct.nfs_pgio_header** %2, align 8
  %7 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %8 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %7, i32 0, i32 8
  %9 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  store %struct.nfs_direct_req* %9, %struct.nfs_direct_req** %3, align 8
  store i32 -1, i32* %5, align 4
  %10 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %11 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.nfs_page* @nfs_list_entry(i32 %13)
  store %struct.nfs_page* %14, %struct.nfs_page** %6, align 8
  %15 = load i32, i32* @NFS_IOHDR_REDO, align 4
  %16 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %17 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %16, i32 0, i32 6
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %149

21:                                               ; preds = %1
  %22 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %23 = call i32 @nfs_init_cinfo_from_dreq(%struct.nfs_commit_info* %4, %struct.nfs_direct_req* %22)
  %24 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %25 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %24, i32 0, i32 2
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load i32, i32* @NFS_IOHDR_ERROR, align 4
  %28 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %29 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %28, i32 0, i32 6
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %34 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %36 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %39 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %32, %21
  %41 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %42 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @NFS_IOHDR_ERROR, align 4
  store i32 %46, i32* %5, align 4
  br label %117

47:                                               ; preds = %40
  %48 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %49 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %52 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 8
  %57 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %58 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %57, i32 0, i32 6
  %59 = call i64 @test_bit(i32 128, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %47
  %62 = load i64, i64* @NFS_ODIRECT_RESCHED_WRITES, align 8
  %63 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %64 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  store i32 128, i32* %5, align 4
  br label %116

65:                                               ; preds = %47
  %66 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %67 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %66, i32 0, i32 6
  %68 = call i64 @test_bit(i32 129, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %115

70:                                               ; preds = %65
  %71 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %72 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NFS_ODIRECT_RESCHED_WRITES, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 128, i32* %5, align 4
  br label %114

77:                                               ; preds = %70
  %78 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %79 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %84 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %83, i32 0, i32 3
  %85 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %86 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @memcpy(i32* %84, i32 %87, i32 4)
  store i32 129, i32* %5, align 4
  %89 = load i64, i64* @NFS_ODIRECT_DO_COMMIT, align 8
  %90 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %91 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %113

92:                                               ; preds = %77
  %93 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %94 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @NFS_ODIRECT_DO_COMMIT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %92
  %99 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %100 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %99, i32 0, i32 3
  %101 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %102 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @memcmp(i32* %100, i32 %103, i32 4)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load i64, i64* @NFS_ODIRECT_RESCHED_WRITES, align 8
  %108 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %109 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  store i32 128, i32* %5, align 4
  br label %111

110:                                              ; preds = %98
  store i32 129, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %106
  br label %112

112:                                              ; preds = %111, %92
  br label %113

113:                                              ; preds = %112, %82
  br label %114

114:                                              ; preds = %113, %76
  br label %115

115:                                              ; preds = %114, %65
  br label %116

116:                                              ; preds = %115, %61
  br label %117

117:                                              ; preds = %116, %45
  %118 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %119 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %118, i32 0, i32 2
  %120 = call i32 @spin_unlock(i32* %119)
  br label %121

121:                                              ; preds = %145, %117
  %122 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %123 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %122, i32 0, i32 4
  %124 = call i32 @list_empty(%struct.TYPE_2__* %123)
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  br i1 %126, label %127, label %148

127:                                              ; preds = %121
  %128 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %129 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call %struct.nfs_page* @nfs_list_entry(i32 %131)
  store %struct.nfs_page* %132, %struct.nfs_page** %6, align 8
  %133 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %134 = call i32 @nfs_list_remove_request(%struct.nfs_page* %133)
  %135 = load i32, i32* %5, align 4
  switch i32 %135, label %145 [
    i32 128, label %136
    i32 129, label %136
  ]

136:                                              ; preds = %127, %127
  %137 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %138 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %137, i32 0, i32 0
  %139 = call i32 @kref_get(i32* %138)
  %140 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %141 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %142 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @nfs_mark_request_commit(%struct.nfs_page* %140, i32 %143, %struct.nfs_commit_info* %4)
  br label %145

145:                                              ; preds = %136, %127
  %146 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %147 = call i32 @nfs_unlock_and_release_request(%struct.nfs_page* %146)
  br label %121

148:                                              ; preds = %121
  br label %149

149:                                              ; preds = %148, %20
  %150 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %151 = call i64 @put_dreq(%struct.nfs_direct_req* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %3, align 8
  %155 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %156 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @nfs_direct_write_complete(%struct.nfs_direct_req* %154, i32 %157)
  br label %159

159:                                              ; preds = %153, %149
  %160 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %161 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %160, i32 0, i32 1
  %162 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %161, align 8
  %163 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %164 = call i32 %162(%struct.nfs_pgio_header* %163)
  ret void
}

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs_init_cinfo_from_dreq(%struct.nfs_commit_info*, %struct.nfs_direct_req*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_empty(%struct.TYPE_2__*) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @nfs_mark_request_commit(%struct.nfs_page*, i32, %struct.nfs_commit_info*) #1

declare dso_local i32 @nfs_unlock_and_release_request(%struct.nfs_page*) #1

declare dso_local i64 @put_dreq(%struct.nfs_direct_req*) #1

declare dso_local i32 @nfs_direct_write_complete(%struct.nfs_direct_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
